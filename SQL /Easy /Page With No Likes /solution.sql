SELECT page_id 
  FROM pages 
  where page_id not in (
  select distinct(page_id) from page_likes
  );
