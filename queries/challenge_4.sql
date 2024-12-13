-- A query that displays the category_name and total count of products (num_products) for each category.

-- Results should be sorted  in descending order by count, with any ties sorted by descending order of category name.

select category_name, count(products) as num_products from products
left join categories using (category_id) 
group by category_name
order by num_products desc, category_name desc;