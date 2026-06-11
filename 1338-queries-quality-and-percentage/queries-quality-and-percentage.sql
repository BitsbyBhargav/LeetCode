SELECT 
    query_name, 
    CAST(AVG(quality) AS DECIMAL(10,2)) AS quality, 
    CAST(SUM(is_poor) * 100.0 / COUNT(*) AS DECIMAL(10,2)) AS poor_query_percentage
FROM (
    SELECT 
        query_name, 
        (rating * 1.0) / position AS quality, -- Forced decimal division
        CASE WHEN rating < 3 THEN 1 ELSE 0 END AS is_poor
    FROM Queries
    WHERE query_name IS NOT NULL -- Edge case filter
) AS new
GROUP BY query_name;