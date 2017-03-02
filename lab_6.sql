Ryan deMayo-
Alan Labouseur
lab 6 
27/2/17

1. 
select name, city
from customers
where city in (select city 
               from (select count(*),city
                     from products 
                     group by city
                     order by count (*) DESC,city 
                     limit 1
                    )sub2
               )
group by city, name;

2.
select name
from products
where priceUSD > (select avg(priceusd)
                     from products
                     )
order by name DESC;

3. 
select distinct customers.name as "Customers", products.pid, sum(totalusd)
from orders inner join products on products.pid = o.pid
			  inner join customers on orders.cid = customers.cid
              group by customers.name, products.pid
              order by sum(totalusd) ASC;
4. 
select customers.name as "Customers", coalesce (sum(qty),0)
from Customers full join orders on orders.cid = customers.cid
group by customers.name;

5. 
select customers.name, products.name, agents.name
from customers
join orders on customers.cid = orders.cid
join products on products.pid = orders.pid
join agents on agents.aid = orders.aid
where agents.city = 'Newark';


6. 
select ((price.priceusd * ordersucts on products.pid = orders.pid
inner join customers on customers.cid = orders.cid
where orders.totalusd != ((price.priceusd * orders.qty)*(1-(customers.discount/100)));

7. 
select *
from orders
left join Customers on Orders.cid = Customers.cid
where Customers.city = 'Kyoto';

-- left joins grab all information from the left table and any information that matches the condition on the join--

select *
from orders
right join Customers on Orders.cid = Customers.cid
where Customers.city = 'Kyoto';



-- right joins grab all information from the right table and any information that matches the condition on the join --
