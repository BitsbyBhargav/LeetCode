select product_id, year as first_year,quantity,price
from(
    select *, min(year) over(partition by product_id) as miny from sales 
) as s
WHERE s.year=s.miny
