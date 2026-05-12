/* Write your T-SQL query statement below */
with highestsalaries as (
    select  d.name as Department,e.name as Employee,e.salary as Salary,
dense_rank() over(partition by d.name order by e.salary desc) as rnk
from Employee e left join Department d on e.departmentId=d.id
)
select 
Department,Employee,Salary 
from highestsalaries
where rnk<=3;