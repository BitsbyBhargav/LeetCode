
SELECT machine_id, ROUND(AVG(timestamp),3) as processing_time
FROM (
    SELECT machine_id, MAX(timestamp)-MIN(timestamp) as timestamp
    FROM Activity
    GROUP BY process_id,machine_id
) as u
GROUP BY machine_id;