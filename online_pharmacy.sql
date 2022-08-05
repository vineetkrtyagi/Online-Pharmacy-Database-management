create database Online_pharmacy ;
use Online_pharmacy;
create table Company
(
com_id int primary key ,
com_name varchar(50),
com_address varchar(50),
phone_no int(10)
);
create table Drugs
(
d_code int primary key , 
 d_name varchar(50),
 cost_price float,
 sellin_price float,
 category varchar(50),
 prod_date varchar(20),
 expiry_date varchar(20),
 quantity int
);
create table manufacture
(
d_code int,
 com_id int,
--  quantity int,
--  exp_date date,
 primary key(d_code),
 foreign key(d_code) references Drugs(d_code),
 foreign key(com_id) references Company(com_id)
);

create table Users
(
user_id varchar(50) primary key,
 pass varchar(50),
 user_name varchar(50),
 user_phno varchar(10),
 email varchar(50)
);
 
create table address
(
  ad_no int,
 user_id varchar(50),
 hno varchar(10),
 street varchar(10),
 city varchar(50),
 pincode int,
 primary key(ad_no,user_id),
 foreign key (user_id) references Users(user_id)
);-- 

create table cart
(
user_id varchar(50),
 d_code int,
 quantity int,
 primary key(user_id,d_code),
 foreign key (user_id) references Users(user_id),
 foreign key (d_code) references Drugs(d_code)
);
create table delivery_service
(
ds_id int primary key,
 ds_name varchar(50),
 contact varchar(50)
);
create table orders
(
order_id int primary key,
 order_date date,
 order_status varchar(20),
 com_id int,
 user_id varchar(50),
 tot_price float,
 gross_price float,
 discount float,
 ds_id int,
 tracking_id int,
 dstatus varchar(20),
 foreign key (com_id) references Company(com_id) ,
 foreign key (user_id) references Users(user_id),
 foreign key (ds_id) references delivery_service(ds_id)
);
create table order_item
(
order_id int,
 d_code int,
 quantity int,
 primary key(order_id,d_code),
 foreign key(order_id) references orders(order_id),
 foreign key(d_code) references Drugs(d_code)
);
create table payment
(
payment_id int primary key,
 payment_status varchar(20),
 amount float,
 order_id int,
 foreign key (order_id) references orders(order_id)
);