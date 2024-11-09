with cte as (SELECT category,product,sum(spend) as total_spend,
Rank() over(PARTITION BY category order by sum(spend) desc) as Rank 
FROM product_spend
where extract(year from transaction_date)=2022
group by category,product)
select category, product, total_spend from cte where rank<=2
