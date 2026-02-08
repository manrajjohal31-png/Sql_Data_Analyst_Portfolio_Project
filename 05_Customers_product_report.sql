with base_query as (
select f.order_number,f.product_key,
       f.order_date,f.sales_amount,f.quantity,
       c.customer_key,c.customer_number,
       concat(first_name,' ',last_name) as customer_name,
       datediff(year,birthdate,getdate()) as age
from dbo.fact_sales f left join dbo.dim_customers c on c.customer_key=f.customer_key
), customer_aggregation as (
select customer_key,customer_number,
       customer_name,age,
       count(distinct order_number) as total_orders,
       SUM(sales_amount) as total_sales,SUM(quantity) as total_quantity,
       COUNT(distinct product_key) as total_products,MAX(order_date) as last_order_date,
       DATEDIFF(month,min(order_date),max(order_date)) as lifespan
from base_query 
group by customer_key,customer_number,customer_name,age
)
select customer_key,customer_number,
       customer_name,age,
       case when age<20 then 'Under 20'
            when age between 20 and 39 then '2039'
            when age between 40 and 49 then '40-49'
            else '50 and above' end age_group,
       case when total_sales>5000 and lifespan>=12 then 'VIP'
            when total_sales<5000 and lifespan>=12 then 'REGULAR'
            else 'NEW' end customer_segment,
       DATEDIFF(month,last_order_date,GETDATE()) as recency,
       case when total_orders=0 then 0 else
       total_sales/total_orders end as avg_order_value,
       case when lifespan=0 then total_sales
       else total_sales/lifespan end as avg_monthly_sales,
       total_orders,total_sales,
       total_quantity,total_products,
       last_order_date,lifespan
from customer_aggregation

