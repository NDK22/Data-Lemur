SELECT candidate_id FROM candidates where lower(skill) in ('python','tableau','postgresql')
group by candidate_id having count(DISTINCT(skill))=3 order by candidate_id;
