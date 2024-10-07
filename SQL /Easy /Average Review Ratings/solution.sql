SELECT extract(month from submit_date) as mth, product_id as product, round(avg(stars),2) as avg_stars 
FROM reviews group by product_id, extract(month from submit_date) order by mth, product;
