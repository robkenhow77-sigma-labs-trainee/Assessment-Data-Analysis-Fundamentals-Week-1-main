-- A query that displays the name of the third most popular product(s) for each category.

-- The columns should be category_name, product_name.

-- Results should be sorted alphabetically by category.
with a as (
select category_name, product_name, units_on_order from products
left join categories using (category_id)
), b as (
select category_name, rank() over(partition by category_name order by units_on_order desc, product_name) as rank, product_name, units_on_order from a 
order by category_name, rank desc, product_name desc
)
select category_name, product_name from b 
where rank = 3;
