SELECT extract(year from current_year.transaction_date ) as year,
  current_year.product_id as product_id,
  current_year.spend as curr_year_spend,
  previous_year.spend as prev_year_spend,
  round(100*(current_year.spend-previous_year.spend)/previous_year.spend,2)as yoy_rate
FROM user_transactions as current_year 
left join user_transactions as previous_year
on extract(year from current_year.transaction_date)= extract(year from previous_year.transaction_date)+1 
and current_year.product_id=previous_year.product_id
order by current_year.product_id asc, extract(year from current_year.transaction_date) asc;
