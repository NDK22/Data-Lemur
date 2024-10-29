SELECT distinct email.user_id FROM 
  emails as email 
  inner join texts as text 
  ON email.email_id = text.email_id
  where lower(text.signup_action) = 'confirmed'
  and  text.action_date =   email.signup_date + interval '1 day'
