SELECT DISTINCT p1.product_id, ISNULL(p2.new_price, 10) AS price
FROM Products p1
LEFT JOIN (
    SELECT p.product_id, p.new_price
    FROM Products p
    INNER JOIN (
        SELECT product_id, MAX(change_date) AS max_date
        FROM Products
        WHERE change_date <= '2019-08-16'
        GROUP BY product_id
    ) latest
    ON p.product_id = latest.product_id 
    AND p.change_date = latest.max_date
) 
p2 ON p1.product_id = p2.product_id;