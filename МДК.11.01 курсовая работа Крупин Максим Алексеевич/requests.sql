# Стоимость доставки на транспорте за 2023 год

select
(trcompany.delivery_list.distance * trcompany.transport.price_1km) + trcompany.transport.start_price
as delivery_cost,
distance,
transport.car_number,
customers.city as departure_city,
delivery_point
from delivery_list
inner join trcompany.transport
on delivery_list.transport_id = transport.id
inner join trcompany.orders
on delivery_list.order_id = orders.id
inner join trcompany.customers
on orders.customer_id = customers.id
where trcompany.orders.date_get
between "2023-01-01" and "2023-12-31";


# Вывод самого прибыльного заказа

select
(trcompany.delivery_list.distance * trcompany.transport.price_1km) + trcompany.transport.start_price
as delivery_cost,
cargo.title,
customers.city as departure_city,
delivery_point,
transport.car_number,
distance
from delivery_list
inner join trcompany.transport
on delivery_list.transport_id = transport.id
inner join trcompany.orders
on delivery_list.order_id = orders.id
inner join trcompany.customers
on orders.customer_id = customers.id
inner join trcompany.cargo
on orders.cargo_id = cargo.id
order by delivery_cost desc
limit 1;


# Все заказы которые выполнил транспорт под номером 2603

select
transport.car_number,
transport.brand,
transport.load_capacity,
delivery_point,
date_arrived,
distance,
order_id
from delivery_list
inner join trcompany.transport
on delivery_list.transport_id = transport.id
where
car_number = "2603";


# Самый популярный маршрут

select 
customers.city as departure_city,
delivery_point,
count(order_id) as number_of_shipments
from delivery_list
inner join trcompany.orders
on delivery_list.order_id = orders.id
inner join trcompany.customers
on orders.customer_id = customers.id
group by departure_city, delivery_point
order by number_of_shipments desc
limit 1;


# Клиент который принес наибольшую сумму

select
sum((trcompany.delivery_list.distance * trcompany.transport.price_1km) + trcompany.transport.start_price)
as delivery_cost,
customers.id,
customers.first_name,
customers.last_name
from delivery_list
inner join trcompany.transport
on delivery_list.transport_id = transport.id
inner join trcompany.orders
on delivery_list.order_id = orders.id
inner join trcompany.customers
on orders.customer_id = customers.id
group by customers.id
order by delivery_cost desc
limit 1;