
with customer_spending as (
select c.customer_key,
SUM(f.sales_amount) as total_spending,
MIN(order_date) first_order,
MAX(order_date) last_order,
datediff(month,MIN(order_date),max(order_date)) as lifespan
from dbo.fact_sales f left join dbo.dim_customers c on f.customer_key=c.customer_key
group by c.customer_key
)
select customer_segment,count(customer_key) as total_customers
from(
select customer_key,
case when total_spending>5000 and lifespan>=12 then 'VIP'
     when total_spending<=5000 and lifespan>=12 then 'regular'
     else 'new' end  customer_segment
from customer_spending 
)t 
group by customer_segment
order by total_customers desc