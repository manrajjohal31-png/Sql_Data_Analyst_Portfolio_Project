with base_query as(
select p.product_name,p.category,p.subcategory,p.cost,p.product_id,p.product_key,
       f.order_number,f.order_date,f.quantity,f.customer_key,f.sales_amount 
from dbo.fact_sales f left join dbo.dim_products p on p.product_key=f.product_key
), product_aggregation as (
select product_name,category,subcategory,cost,product_id,product_key,
       count(distinct order_number) as total_orders,SUM(sales_amount) as total_sales,
       SUM(quantity) as total_quantity,COUNT(distinct customer_key) as total_customers,
       DATEDIFF(MONTH,MIN(order_date),MAX(order_date)) as lifespan,
      max(order_date) as last_sale_date
from base_query
group by product_key,product_name,category,subcategory,cost,product_id
) 
select product_key,product_name,category,subcategory,cost,product_id,
       DATEDIFF(month,last_sale_date,getdate() ) as recency,
       case when total_sales>=50000 then 'High-Performer'
            when total_sales>=10000 then 'Mid-Performer'
            else 'Low-Performer' end as product_segment,
       case when total_orders=0 then 0
       else total_sales/total_orders end as avg_order_revenue,
       case when lifespan=0 then total_sales
       else total_sales/lifespan end as avg_monthly_revenue,
       total_orders,total_sales,
       total_quantity,total_customers,lifespan
       from product_aggregation