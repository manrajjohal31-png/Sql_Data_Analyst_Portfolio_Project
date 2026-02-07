
select category,
   total_sales,
   SUM(total_sales) over() as overall_sales,
   concat(round((CAST(total_sales as float)/sum(total_sales) over())*100,2),'%') overall_sales_percentage
from(
   select category,
   SUM(sales_amount) as total_sales
from dbo.fact_sales f left join dbo.dim_products  p  on p.product_key=f.product_key
group by category)t
order by total_sales desc