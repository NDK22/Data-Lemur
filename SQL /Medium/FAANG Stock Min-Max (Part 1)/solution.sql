select 
  s1.ticker,
  TO_CHAR(s2.date, 'Mon-YYYY') as highest_mth,
  s2.open as highest_open,
  TO_CHAR(s3.date, 'Mon-YYYY') as lowest_mth,
  s3.open as lowest_open
  from stock_prices s1
  right join stock_prices s2 on s1.ticker=s2.ticker and s2.open in (select  max(open) from stock_prices group by ticker)
   right join stock_prices s3 on s2.ticker=s3.ticker and s3.open in (select  min(open) from stock_prices group by ticker)
group by s1.ticker,  s2.date,
  s2.open,
  s3.date,
  s3.open having s1.ticker is not null order by ticker
