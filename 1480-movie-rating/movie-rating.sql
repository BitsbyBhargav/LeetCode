SELECT results FROM 
(   --ye wala code name nikalega
    SELECT TOP 1 u.name results
    FROM movierating mr 
    JOIN users u ON u.user_id = mr.user_id 
    GROUP BY u.name
    ORDER BY count(mr.movie_id) desc, u.name asc --ye tie hoga tb smbhalega
) a
UNION ALL
SELECT results FROM 
(   --ye wala code movie nikalega
    SELECT TOP 1 title results
    from movierating mr 
    JOIN Movies m on m.movie_id = mr.movie_id
    WHERE FORMAT(created_at, 'yyyy-MM') = '2020-02'
    group by title
    ORDER BY AVG(rating  * 1.0) desc, title asc --ye sorting smbhal lega
) b