/* Write your T-SQL query statement below */

SELECT
    transaction_date,
    COALESCE(SUM(CASE WHEN amount % 2 = 1 THEN amount ELSE NULL END),0) as odd_sum,
    COALESCE(SUM(CASE WHEN amount % 2 = 0 THEN amount ELSE NULL END),0) as even_sum
FROM transactions
GROUP BY transaction_date