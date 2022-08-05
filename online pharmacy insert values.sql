
use Online_pharmacy;

insert into  Company values(1,'CIPLA','HYDERABAD', 5555555);
insert into Company values(2,'DR REDDY','BENGALURU', 94694875);
insert into Company values(3,'HIMALAYA','MUMBAI', 978564888);
insert into Company values(4,'PATANJALI','DEHRADUN', 97856433);

select * from Company ;

insert into Drugs values(1,'Augmentin 625 Duo Tablet',22000,25000,'penicillin-type antibiotic',str_to_date('10-09-2018','%m-%d-%Y'),str_to_date('10-09-2022','%m-%d-%Y'), 10);
insert into Drugs values(2,' Azithral 500 Tablet',18000,20000,'antibiotic bacterial infections', str_to_date('10-09-2020','%m-%d-%Y'),str_to_date('10-16-2023','%m-%d-%Y'), 5);
insert into Drugs values(3,' Allegra 120mg Tablet',180,203.5,'Fexofenadine',str_to_date('10-09-2019','%m-%d-%Y'),str_to_date('10-16-2023','%m-%d-%Y'),10);
insert into Drugs values(4,' Avil 25 Tablet',67,70,'Pheniramine ',str_to_date('10-09-2021','%m-%d-%Y'),str_to_date('04-04-2024','%m-%d-%Y'),25);
insert into Drugs values(5,' Ace Proxyvon Tablet',1500,2000,' Aceclofenac Paracetamol',str_to_date('10-09-2020','%m-%d-%Y'), str_to_date('08-31-2023','%m-%d-%Y'), 8);
insert into Drugs values(6,' AntiD 300mcg/ml Injection',305,338,' Anti Rh D Immunoglobulin',str_to_date('10-09-2019','%m-%d-%Y'),str_to_date('10-16-2024','%m-%d-%Y'), 4);
insert into Drugs values(7,'Cheston Cold Tablet',69,72,'Cetirizine Paracetamol Phenylephrine',str_to_date('10-09-2020','%m-%d-%Y'),str_to_date('09-25-2024','%m-%d-%Y'), 6);
insert into Drugs values(8,'Levoflox 500 Tablet',100,105,' Levofloxacin',str_to_date('10-09-2020','%m-%d-%Y'), str_to_date('1-16-2025','%m-%d-%Y'),12);

select * from Drugs;

insert into  manufacture values(1,1 );
insert into manufacture values(2,2 );
insert into manufacture values(3,2 );
insert into manufacture values(4,1 );
insert into manufacture values(5,4);
insert into manufacture values(6,3 );
insert into manufacture values(7,4 );
insert into manufacture values(8,3 );

select * from manufacture;

insert into Users values('SUSH101','SUS','SUSHITH 
REDDY','1111111111','sushith@xyz.com');
insert into  Users values('PART102','PAR','PARTHIV 
REDDY','2222222222','parthiv@xyz.com');
insert into Users values('ABHI103','ABHI','ABHINAV 
REDDY','3333333333','abhinav@xyz.com');
insert into Users values('ROHI104','ROH','ROHITH 
RAO','4444444444','rohith@xyz.com');

select * from Users;

insert into address values(1,'SUSH101','1-1','A','HYDERABAD',500001);
insert into address values(2,'SUSH101','1-2','B','HYDERABAD',500002);
insert into address values(1,'PART102','1-3','C','HYDERABAD',500003);
insert into address values(2,'PART102','1-4','D','HYDERABAD',500004);
insert into address values(1,'ABHI103','1-5','E','HYDERABAD',500005);
insert into address values(1,'ROHI104','1-6','F','HYDERABAD',500006);
select * from address;

insert into cart values('SUSH101',1,1);
insert into cart values('SUSH101',3,2);
insert into cart values('SUSH101',6,5);
insert into cart values('SUSH101',8,3);
insert into cart values('PART102',2,1);
insert into cart values('PART102',4,3);
insert into cart values('PART102',5,4);
insert into cart values('PART102',6,2);
insert into cart values('ROHI104',2,1);
insert into cart values('ROHI104',7,4);
insert into cart values('ABHI103',3,3);
insert into cart values('ABHI103',5,1);

select * from cart;

insert into delivery_service values(1,'INDIA 
POST','indiapost@indiapost.gov.in');
insert into delivery_service values(2,'BLUE DART','bluedart@bluedart.com');
insert into delivery_service values(3,'FEDEX','fedex@fedex.com');
insert into delivery_service values(4,'DHL','dhl@dhl.com');

select * from delivery_service;

insert into orders values(1,str_to_date('12-31-2020','%m-%d-%Y'),'SUCCESS',1,'SUSH101',22098,25100,3004,1,1,'DELIVERED');
insert into orders values(2,str_to_date('01-02-2021 ','%m-%d-%Y'),'SUCCESS',2,'SUSH101',268,280,12,2,2,'DELIVERED');
insert into orders values(3,str_to_date('01-05-2021','%m-%d-%Y'),'SUCCESS',4,'PART102',531,554,23,3,3,'DELIVERED');
insert into orders values(4,str_to_date('01-09-2021','%m-%d-%Y'),'SUCCESS',3,'PART102',500,525,25,4,4,'DELIVERED');
insert into orders values(5,str_to_date('01-11-2021','%m-%d-%Y'),'SUCCESS',3,'ROHI104',18000,20000,2000,1,5,'DELIVERED');
insert into orders values(6,str_to_date('01-16-2021','%m-%d-%Y'),'SUCCESS',4,'ABHI103',90,99,9,2,6,'DELIVERED');
insert into orders values(7,str_to_date('01-19-2021','%m-%d-%Y'),'SUCCESS',1,'ABHI103',1500,200,500,3,7,'DELIVERED');
insert into orders values(8,str_to_date('01-22-2021','%m-%d-%Y'),'PAYMENT FAILED',null,'SUSH101',22148,25155,3007,null,null,null);
insert into orders values(9,str_to_date('01-25-2021','%m-%d-%Y'),'PAYMENT FAILED',null,'PART102',22136,25142,3006,null,null,null);
insert into orders values(10,str_to_date('01-31-2021','%m-%d-%Y'),'PAYMENT FAILED',null,'ROHI104',18000,20000,2000,null,null,null);

select * from orders;

insert into order_item values(1,1,1);
insert into order_item values(1,3,2);
insert into order_item values(2,4,4);
insert into order_item values(3,3,1);
insert into order_item values(3,7,3);
insert into order_item values(4,8,5);
insert into order_item values(5,2,1);
insert into order_item values(6,6,3);
insert into order_item values(7,5,3);
insert into order_item values(8,1,1);
insert into order_item values(8,3,1);
insert into order_item values(8,8,1);
insert into order_item values(9,1,1);
insert into order_item values(9,4,1);
insert into order_item values(9,7,1);
insert into order_item values(10,2,1);

select * from order_item;

insert into payment values(1,'SUCCESS',22098 ,1);
insert into payment values(2,'SUCCESS',268 ,2);
insert into payment values(3,'SUCCESS',531 ,3);
insert into payment values(4,'SUCCESS',500 ,4);
insert into payment values(5,'SUCCESS',18000 ,5);
insert into payment values(6,'SUCCESS',90 ,6);
insert into payment values(7,'SUCCESS',1500 ,7);
insert into payment values(8,'INSUFFICIENT BALANCE',18000 ,10);
select * from payment;