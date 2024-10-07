SELECT u.city, count(*) as total_orders FROM trades t, users u 
where u.user_id = t.user_id and lower(t.status) = 'completed' group by u.city order by total_orders desc limit 3
