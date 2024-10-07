SELECT sender_id,count(*) as message_count FROM messages where extract(year from sent_date)='2022' and extract(month from sent_date)='08' group by sender_id order by message_count desc limit 2;
