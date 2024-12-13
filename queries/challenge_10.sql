-- A query that displays the name of the third most popular product(s) for each category.

-- The columns should be category_name, product_name.

-- Results should be sorted alphabetically by category.
with a as (
select category_name, product_name, units_on_order from products
left join categories using (category_id)
)
select category_name, product_name, rank() over(partition by category_name) from a
order by rank desc;

