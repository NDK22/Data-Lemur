SELECT round(count(t.email_id)::DECIMAL/count(distinct e.email_id),2)
FROM emails e left join texts t on e.email_id=t.email_id and t.signup_action='Confirmed';
