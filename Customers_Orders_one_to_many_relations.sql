use book_shop;

create table  customers(
id int not null auto_increment primary key,
first_name varchar(100),
last_name varchar(100),
email varchar(100)
);

drop table customers;
drop table orders;

create table orders(
id int not null auto_increment primary key,
order_date date,
 amount decimal(8,2),
 customer_id int,
 foreign key(customer_id) references customers(id)
on delete cascade);

INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 1),
       ('2017/11/11', 35.50, 1),
       ('2014/12/12', 800.67, 2),
       ('2015/01/03', 12.50, 2),
       ('1999/04/11', 450.25, 5);
       
       select * from orders;
       select * from customers;
       
       select * from orders where customer_id=(select id from customers where id like 1);
       
       select * from customers,orders order by last_name;
       
       -- Implicit inner joint
       
       select * from customers,orders where customers.id=orders.customer_id;
       
       -- Explicit inner joint
       
       select * from customers join orders where customers.id=orders.customer_id;
       
       -- Left joint note:-use on instead of where
       
       select * from customers left join orders on customers.id=orders.customer_id;
       
       select first_name,last_name,ifnull(sum(amount),0) as total_spent
       from customers left join orders on customers.id=orders.customer_id 
       group by customers.id order by total_spent desc;
       
select * from customers right join orders on customers.id=orders.customer_id;
              
			
            create table students(id int not null auto_increment primary key,
            first_name varchar(100));
            
            create table papers(student_id int,title varchar(100),grade int,
            foreign key(student_id) references students(id) on delete cascade);