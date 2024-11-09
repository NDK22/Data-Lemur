SELECT t.user_id,t.tweet_date, round(avg(w.tweet_count),2) as rolling_avg_3d FROM
tweets t join tweets w on t.user_id=w.user_id
and w.tweet_date between t.tweet_date - interval '2' day and t.tweet_date
group by t.user_id, t.tweet_date
order by t.user_id,t.tweet_date

select user_id,
  tweet_date,
  round(avg(tweet_count) over(PARTITION BY user_id order by tweet_date rows between 2 preceding and current row),2) as rolling_avg_3d
  from tweets
