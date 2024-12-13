-- A query that displays the five most expensive products supplied by suppliers based in London or Tokyo.

-- The columns should be product_name and unit_price only.

select product_name from products 
left join suppliers using (supplier_id)
where city ilike 'London' or city ilike 'Tokyo'
limit 5;
