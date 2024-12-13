-- A query that displays the first ten orders where the total price is more than the price of the most expensive product in the database.

-- The columns should be order_id and total_price only.

-- total_price should be displayed as an integer.

-- Results should be ordered by descending order_id
with mp as (
    select max(unit_price) as max_price from products
    ), tp as (
    select order_id, round(sum((unit_price * quantity))) as total_price from order_details
    group by order_id
    )
select order_id, total_price from tp
where total_price > (select max_price from mp)
order by order_id desc
limit 10;

