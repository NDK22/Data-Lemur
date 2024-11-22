with cte as (SELECT server_id,
session_status,
status_time as start_time,
lead(status_time) over(PARTITION BY server_id order by status_time ) as stop_time
FROM server_utilization order by server_id, status_time)
select extract(day from (JUSTIFY_HOURS(sum(stop_time-start_time)))) as total_uptime_days from cte
where session_status='start'
