-- A query that displays the five most expensive products supplied by suppliers based in Paris or Annecy, Oviedo

-- The columns should be product_name and unit_price only.

select product_name, unit_price from products 
left join suppliers using (supplier_id)
where city ilike 'London' or city ilike 'Tokyo'
limit 5;

/*
select city from products
left join suppliers using (supplier_id)
where product_name like 'Gudbrandsdalsost';

product_name,unit_price
Côte de Blaye,263.5
Raclette Courdavault,55
Ipoh Coffee,46
Queso Manchego La Pastora,38
Gudbrandsdalsost,36
*/