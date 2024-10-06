select tweet_bucket, count(tweet_bucket) as user_num 
  from(
  SELECT user_id , count(*) as tweet_bucket
  FROM tweets 
  where extract(year from tweet_date)='2022' 
  group by user_id) temp
  group by temp.tweet_bucket;
