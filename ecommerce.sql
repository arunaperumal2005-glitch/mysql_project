create database ecommerce;
use ecommerce;
create table customers (
customer_id int primary key auto_increment,
name varchar(50), 
email varchar(100),
city varchar(50)
);
create table products (
product_id int primary key auto_increment,
name varchar(50),
price decimal(10,2),
stock int
);
create table cart (
cart_id int primary key auto_increment,
customer_id int,
product_id int,
quantity int,
foreign key (customer_id) references customers(customer_id),
foreign key (product_id) references products(product_id)
);
create table orders (
order_id int primary key auto_increment,
customer_id int,
order_date date,
foreign key (customer_id) references customers(customer_id)
);
create table order_items (
order_item_id int primary key auto_increment,
order_id int,
product_id int,
quantity int,
foreign key (order_id) references orders(order_id),
foreign key (product_id) references products(product_id)
);
create table payments (
payment_id int primary key auto_increment,
order_id int,
amount decimal(10,2),
payment_status varchar(20),
foreign key (order_id) references orders(order_id)
);
insert into customers (name, email, city) values
('Arun','arun@gmail.com','Chennai'),
('Priya','priya@gmail.com','Madurai'),
('Kiran','kiran@gmail.com','Coimbatore'),
('Divya','divya@gmail.com','Salem'),
('Ravi','ravi@gmail.com','Trichy'),
('Meena','meena@gmail.com','Erode'),
('Vijay','vijay@gmail.com','Chennai'),
('Anu','anu@gmail.com','Madurai'),
('Suresh','suresh@gmail.com','Salem'),
('Latha','latha@gmail.com','Trichy'),
('Rahul','rahul@gmail.com','Chennai'),
('Sneha','sneha@gmail.com','Madurai'),
('Aravind','aravind@gmail.com','Coimbatore'),
('Keerthi','keerthi@gmail.com','Salem'),
('Manoj','manoj@gmail.com','Trichy'),
('Deepa','deepa@gmail.com','Erode'),
('Karthik','karthik@gmail.com','Chennai'),
('Pooja','pooja@gmail.com','Madurai'),
('Harish','harish@gmail.com','Salem'),
('Nisha','nisha@gmail.com','Trichy'),
('Ajay','ajay@gmail.com','Erode'),
('Shalini','shalini@gmail.com','Chennai'),
('Ramesh','ramesh@gmail.com','Madurai'),
('Gayathri','gayathri@gmail.com','Coimbatore'),
('Santhosh','santhosh@gmail.com','Salem'),
('Lavanya','lavanya@gmail.com','Trichy'),
('Dinesh','dinesh@gmail.com','Erode'),
('Aishwarya','aish@gmail.com','Chennai'),
('Prakash','prakash@gmail.com','Madurai'),
('Revathi','revathi@gmail.com','Coimbatore'),
('Naveen','naveen@gmail.com','Salem'),
('Swathi','swathi@gmail.com','Trichy'),
('Gokul','gokul@gmail.com','Erode'),
('Janani','janani@gmail.com','Chennai'),
('Bala','bala@gmail.com','Madurai'),
('Divakar','divakar@gmail.com','Coimbatore'),
('Muthu','muthu@gmail.com','Salem'),
('Kavya','kavya@gmail.com','Trichy'),
('Saravanan','saravanan@gmail.com','Erode'),
('Sindhu','sindhu@gmail.com','Chennai'),
('Vignesh','vignesh@gmail.com','Madurai'),
('Anitha','anitha@gmail.com','Coimbatore'),
('Prabhu','prabhu@gmail.com','Salem'),
('Chitra','chitra@gmail.com','Trichy'),
('Hari','hari@gmail.com','Erode'),
('Yamini','yamini@gmail.com','Chennai'),
('Kishore','kishore@gmail.com','Madurai'),
('Uma','uma@gmail.com','Coimbatore'),
('Selvam','selvam@gmail.com','Salem'),
('Radha','radha@gmail.com','Trichy');
insert into products (name, price, stock) values
('Laptop',50000,10),
('Mobile',20000,20),
('Headphones',2000,50),
('Keyboard',1500,40),
('Mouse',800,60),
('Monitor',12000,15),
('Tablet',25000,10),
('Charger',500,100),
('Camera',30000,5),
('Speaker',4000,25),
('Smart Watch',3000,30),
('Power Bank',1500,50),
('Bluetooth Earbuds',2500,40),
('USB Cable',300,100),
('External Hard Disk',5000,20),
('Pen Drive',800,60),
('Router',2000,25),
('Printer',7000,10),
('Scanner',6000,8),
('Webcam',1800,35),
('Microphone',2200,25),
('Gaming Chair',12000,5),
('Office Chair',6000,10),
('Table Lamp',700,45),
('Extension Board',400,70),
('Projector',25000,6),
('VR Headset',15000,7),
('Graphics Card',45000,4),
('Motherboard',10000,8),
('Processor',20000,6),
('RAM 8GB',3500,20),
('RAM 16GB',6500,15),
('SSD 512GB',5000,18),
('SSD 1TB',9000,12),
('Cooling Fan',1200,30),
('Laptop Stand',1500,25),
('Wireless Mouse',1200,40),
('Mechanical Keyboard',3500,20),
('Smart TV',40000,5),
('AirPods',12000,10);
insert into cart (customer_id, product_id, quantity) values
(1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,5,2),
(6,6,1),(7,7,1),(8,8,3),(9,9,1),(10,10,2),
(1,11,2),(2,12,1),(3,13,2),(4,14,1),(5,15,3),
(6,16,1),(7,17,2),(8,18,1),(9,19,2),(10,20,1),
(11,1,2),(12,2,1),(13,3,3),(14,4,2),(15,5,1),
(16,6,2),(17,7,1),(18,8,2),(19,9,1),(20,10,3),
(21,11,1),(22,12,2),(23,13,1),(24,14,3),(25,15,2),
(26,16,1),(27,17,2),(28,18,1),(29,19,2),(30,20,1),
(31,5,2),(32,6,1),(33,7,3),(34,8,2),(35,9,1),
(36,10,2),(37,11,1),(38,12,2),(39,13,1),(40,14,3);
insert into orders (customer_id, order_date) values
(1,'2026-05-01'),(2,'2026-05-02'),(3,'2026-05-03'),
(4,'2026-05-04'),(5,'2026-05-05'),
(6,'2026-05-06'),(7,'2026-05-07'),
(8,'2026-05-08'),(9,'2026-05-09'),(10,'2026-05-10'),
(11,'2026-05-11'),(12,'2026-05-12'),(13,'2026-05-13'),
(14,'2026-05-14'),(15,'2026-05-15'),
(16,'2026-05-16'),(17,'2026-05-17'),
(18,'2026-05-18'),(19,'2026-05-19'),(20,'2026-05-20'),
(21,'2026-05-21'),(22,'2026-05-22'),(23,'2026-05-23'),
(24,'2026-05-24'),(25,'2026-05-25'),
(26,'2026-05-26'),(27,'2026-05-27'),
(28,'2026-05-28'),(29,'2026-05-29'),(30,'2026-05-30'),
(31,'2026-05-31'),(32,'2026-06-01'),(33,'2026-06-02'),
(34,'2026-06-03'),(35,'2026-06-04'),
(36,'2026-06-05'),(37,'2026-06-06'),
(38,'2026-06-07'),(39,'2026-06-08'),(40,'2026-06-09'),
(41,'2026-06-10'),(42,'2026-06-11'),(43,'2026-06-12'),
(44,'2026-06-13'),(45,'2026-06-14'),
(46,'2026-06-15'),(47,'2026-06-16'),
(48,'2026-06-17'),(49,'2026-06-18'),(50,'2026-06-19');
insert into order_items (order_id, product_id, quantity) values
(1,1,1),(2,2,2),
(3,3,1),(4,4,1),
(5,5,2),(6,6,1),
(7,7,1),(8,8,3),
(9,9,1),(10,10,2),
(1,11,2),(1,12,1),
(2,13,1),(2,14,2),
(3,15,1),(3,16,2),
(4,17,1),(4,18,1),
(5,19,2),(5,20,1),
(6,1,1),(6,2,2),
(7,3,1),(7,4,2),
(8,5,1),(8,6,2),
(9,7,1),(9,8,1),
(10,9,2),(10,10,1),
(11,11,1),(12,12,2),
(13,13,1),(14,14,3),
(15,15,2),(16,16,1),
(17,17,2),(18,18,1),
(19,19,2),(20,20,1),
(21,5,2),(22,6,1),
(23,7,3),(24,8,2),
(25,9,1),(26,10,2),
(27,11,1),(28,12,2),
(29,13,1),(30,14,3);
insert into payments (order_id, amount, payment_status) values
(1,50000,'Paid'),(2,40000,'Paid'),(3,2000,'Pending'),
(4,1500,'Paid'),(5,1600,'Pending'),
(6,12000,'Paid'),(7,25000,'Paid'),
(8,1500,'Pending'),(9,30000,'Paid'),(10,8000,'Paid'),
(11,3200,'Paid'),(12,4500,'Paid'),(13,2100,'Pending'),
(14,3800,'Paid'),(15,5200,'Paid'),
(16,1500,'Pending'),(17,2700,'Paid'),
(18,3400,'Paid'),(19,4100,'Pending'),(20,2900,'Paid'),
(21,6000,'Paid'),(22,7200,'Pending'),(23,1800,'Paid'),
(24,9500,'Paid'),(25,4300,'Pending'),
(26,5100,'Paid'),(27,6200,'Paid'),
(28,4700,'Pending'),(29,8000,'Paid'),(30,3500,'Paid'),
(31,9100,'Paid'),(32,6700,'Pending'),(33,2800,'Paid'),
(34,7600,'Paid'),(35,5400,'Pending'),
(36,6100,'Paid'),(37,8300,'Paid'),
(38,9200,'Pending'),(39,4700,'Paid'),(40,5600,'Paid'),
(41,7100,'Paid'),(42,8800,'Pending'),(43,3900,'Paid'),
(44,6600,'Paid'),(45,5200,'Pending'),
(46,7800,'Paid'),(47,8400,'Paid'),
(48,9300,'Pending'),(49,6100,'Paid'),(50,7000,'Paid');
alter table order_items add price decimal(10,2);
alter table orders add status varchar(20);
update order_items oi
join products p on oi.product_id = p.product_id
set oi.price = p.price;
update orders set status = 'Delivered' where order_id <= 30;
update orders set status = 'Shipped' where order_id between 31 and 40;
update orders set status = 'Pending' where order_id > 40;

select * from customers;
select * from products;
select * from cart;
select * from orders;
select * from order_items;
select * from payments;
select name , city from customers;
select name , price from products;
select * from customers where city="chennai";
select * from customers where city="madurai";
select * from products where price>20000;
select * from products where stock<10;
select * from orders where status="delivered";
select * from orders where status="pending";
select * from payments where payment_status="paid";
select * from payments where payment_status="pending";
select * from cart where quantity > 2;
select * from order_items where quantity>=2;
select * from orders where month(order_date) =5;
select * from orders where year(order_date) = 2026;
select curdate();
select * from products order by price desc;
select * from products order by price;
select * from customers order by name;
select * from payments order by amount desc limit 5;
select * from order_items order by quantity desc limit 10;
select * from customers limit 10 offset 10;
select * from customers where name like "%a";
select * from customers where name like "a%" and city="chennai";
select * from customers where name like '%an%';
select * from customers where name like "a%" or city="chennai";
select * from customers where email like '%gmail%';
select * from products where price between 10000 and 20000;
select * from orders where order_date between '2026-05-01' and '2026-05-15';
select * from customers where city in('Chennai', 'Salem', 'Erode');
select * from order_items where price is null;
select upper(name) from customers;
select lower(name) from customers;
select name, length(name) from customers;
select concat(name, ' - ', city) as customer_info from customers;
select count(*) from customers;
select count(*) from products;
select count(name) from customers;
select count(*) as total_customers from customers;
select distinct (quantity) from cart;
select sum(amount) from payments;
select max(price) from products;
select min(price) from products;
select sum(amount) from payments where payment_status='Paid';
select avg(amount) from payments;
select count(cart_id) as total from cart group by quantity;
select status, count(*) from orders group by status;
select payment_status, count(*) from payments group by payment_status;
select product_id, sum(quantity) from order_items
group by product_id
order by sum(quantity) desc limit 1;
select city, count(*) as total from customers
group by city
having count(*) > 5;
select c.name, o.order_id
from customers c
join orders o on c.customer_id = o.customer_id;
select o.order_id , p.amount 
from orders o 
join payments p on o.order_id=p.order_id;
select distinct c.city
from customers c
join orders o on c.customer_id = o.customer_id;
select c.name,o.status
from customers c 
join orders o on c.customer_id=o.customer_id;
select o.order_id, oi.product_id, oi.quantity
from orders o
join order_items oi on o.order_id = oi.order_id;
select p.name,oi.quantity 
from products p
join order_items oi on p.product_id=oi.product_id;
select c.name,ca.product_id
from customers c
left join cart ca on c.customer_id=ca.customer_id;
select c.name,ca.product_id
from customers c
right join cart ca on c.customer_id=ca.customer_id;
select c.name,ca.product_id
from customers c
cross join cart ca;
select c.name, sum(p.amount) as total_spent
from customers c
join orders o on c.customer_id = o.customer_id
join payments p on o.order_id = p.order_id
group by c.name;
select p.name, sum(oi.quantity) as total_sold
from products p
join order_items oi on p.product_id = oi.product_id
group by p.name;
select c.name, count(o.order_id) as total_orders
from customers c
join orders o on c.customer_id = o.customer_id
group by c.name;
select p.name, sum(oi.quantity * oi.price) as revenue
from products p
join order_items oi on p.product_id = oi.product_id
group by p.name;
select o.order_id, sum(oi.quantity * oi.price) as order_total
from orders o
join order_items oi on o.order_id = oi.order_id
group by o.order_id;
select customer_id from customers
where customer_id not in (select customer_id from orders);
select product_id from products
where product_id not in (select product_id from order_items);
select c.name, sum(p.amount) as total
from customers c
join orders o on c.customer_id = o.customer_id
join payments p on o.order_id = p.order_id
group by c.name
having sum(p.amount) > (select avg(amount) from payments);
select c.name, p.amount
from customers c
join orders o on c.customer_id = o.customer_id
join payments p on o.order_id = p.order_id
where p.amount > 5000;
select o.order_id, c.name
from orders o
join customers c on o.customer_id = c.customer_id
where o.status='Delivered';
select product_id, sum(quantity) as total_qty
from order_items
group by product_id
order by total_qty desc;
select c.name, sum(p.amount) as total_revenue
from customers c
join orders o on c.customer_id = o.customer_id
join payments p on o.order_id = p.order_id
group by c.name
order by total_revenue desc; 
select name from customers c
where exists (
select 1 from orders o where o.customer_id = c.customer_id
);
select name, price,
case
when price < 1000 then 'budget'
when price between 1000 and 10000 then 'mid range'
else 'premium'
end as category
from products;
create index idx_city on customers(city);
select * from customers where city = 'Chennai';
show index from customers;
explain select * from customers where city = 'Chennai';
create index idx_payment_status on payments(payment_status);
select * from payments where payment_status = 'paid';
show index from payments;
explain select * from payments where  payment_status = 'paid';
create view order_summary as
select c.name, o.order_id, o.status, p.amount, p.payment_status
from customers c
join orders o on c.customer_id = o.customer_id
join payments p on o.order_id = p.order_id;
select * from order_summary;
explain select * from customers where city = 'chennai';
start transaction;
update products set stock = stock - 1 where product_id = 1;
commit;
start transaction;
update products set stock = stock - 1 where product_id = 2;
rollback;
delimiter //
create trigger reduce_stock_after_order
after insert on order_items
for each row
begin
update products
set stock = stock - new.quantity
where product_id = new.product_id;
end //
delimiter ;
insert into order_items (order_id, product_id, quantity, price) values (1, 1, 2, 50000);
select product_id, name, stock from products where product_id = 1;
show triggers;
drop trigger reduce_stock_after_order;
delimiter //
create procedure get_customer_orders(in cust_id int)
begin
select 
c.name,
o.order_id,
o.order_date,
o.status
from customers c
join orders o on c.customer_id = o.customer_id
where c.customer_id = cust_id;
end //
delimiter ;
call get_customer_orders(1);
call get_customer_orders(5);
show procedure status where db = 'ecommerce';
drop procedure get_customer_orders;
