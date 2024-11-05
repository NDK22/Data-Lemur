SELECT 
  manufacturer, 
  ('$'||round((sum(total_sales)/10^6)::numeric,0)||' million') as sales_mil
FROM pharmacy_sales 
group by manufacturer
order by sum(total_sales) DESC,manufacturer;
