-- A query that displays the average product price (average_price) for each category 
-- from each supplier when the category name contains the letter 'm' (case-insensitive).

-- The columns should be supplier, category, product_price.

-- product_price should be an integer.

-- Results should be sorted alphabetically by supplier and category.

select category_name, avg(unit_price) from products
left join categories using (category_id)
where category_name ilike '%m%'
group by category_name;

