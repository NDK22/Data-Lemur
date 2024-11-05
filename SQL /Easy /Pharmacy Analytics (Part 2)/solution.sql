SELECT 
  manufacturer,
  count(drug) as drug_count,
  sum((cogs-total_sales)) as total_loss 
FROM pharmacy_sales
where cogs-total_sales >0
GROUP BY manufacturer
ORDER BY total_loss DESC
