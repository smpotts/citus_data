/*
  This is a query from the Citus docs tutorials that calculates the top 10 users who created the most Github repositories.
*/


SELECT 
    login, 
    count(*)
FROM github_events ge
JOIN github_users gu
    ON ge.user_id = gu.user_id
WHERE event_type = 'CreateEvent' 
    AND payload @> '{"ref_type": "repository"}'
GROUP BY login
ORDER BY count(*) DESC 
LIMIT 10;
