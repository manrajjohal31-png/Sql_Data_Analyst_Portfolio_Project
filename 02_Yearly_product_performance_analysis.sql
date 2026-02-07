with yearly_product_sales as (
select year(f.order_date) as order_year,p.product_name,sum(f.sales_amount) as current_sales 
from dbo.fact_sales f left join dbo.dim_products p on f.product_key=p.product_key
where f.order_date is not null 
group by year(f.order_date),p.product_name
)
select order_year,product_name,current_sales,
AVG(current_sales) over(partition by product_name) as avg_sales,
current_sales-AVG(current_sales) over(partition by product_name) as avg_diff,
case when current_sales-AVG(current_sales) over(partition by product_name)>0 then 'Above avg'
when current_sales-AVG(current_sales) over(partition by product_name)<0 then 'Below_avg' else 'avg' end avg_change,
lag(current_sales) over(partition by product_name order by order_year) as prev_year_sales,
current_sales-lag(current_sales) over(partition by product_name order by order_year) as prev_year_diff,
case when current_sales-lag(current_sales) over(partition by product_name order by order_year)>0 then 'increase'
when current_sales-lag(current_sales) over(partition by product_name order by order_year)<0 then 'decrease' else 'no change' end prev_year_change
from yearly_product_sales
order by product_name,order_year