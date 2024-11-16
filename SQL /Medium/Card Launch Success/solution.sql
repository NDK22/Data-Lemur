with cte as (select card_name,issued_amount, make_date(issue_year,issue_month,1) as issued_date, min(make_date(issue_year,issue_month,1)) over (PARTITION BY  card_name )
as launched_date from monthly_cards_issued)

select card_name,issued_amount from cte where issued_date = launched_date order by issued_amount desc
