-- A query that displays the number of orders that involved 2 or more products as count_of_multiple_orders.

with orders as (
    SELECT order_id, COUNT(product_id) AS c FROM order_details
    LEFT JOIN products USING (product_id)
    GROUP BY order_id
    HAVING COUNT(product_id) > 1
)
select count(*) from orders;

