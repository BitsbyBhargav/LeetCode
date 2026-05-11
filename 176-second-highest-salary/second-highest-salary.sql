/* Write your T-SQL query statement below */
select (
    select distinct salary from(
        select salary,
        dense_rank() over(order by salary desc) as rnk
        from Employee
    ) as ranked_table
    where rnk=2
) as SecondHighestSalary;