-- A query that displays the total integer value of all products in stock as "stock_value".

select round(sum(unit_price)) as stock_value from products;


