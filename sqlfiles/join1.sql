select * from customer;

select * from address;

select first_name,last_name,address,PHONE
from customer join ADDRESS
on customer.ADDRESS_ID = ADDRESS.ADDRESS_ID;


select first_name,last_name,c.ADDRESS_ID,address,PHONE
from customer c left join ADDRESS a
on c.ADDRESS_ID = a.ADDRESS_ID;


select first_name,last_name,c.ADDRESS_ID,a.ADDRESS_ID,address,PHONE
from customer c right join ADDRESS a
on c.ADDRESS_ID = a.ADDRESS_ID;


select first_name,last_name,c.ADDRESS_ID,a.ADDRESS_ID,address,PHONE
from customer c full join ADDRESS a
on c.ADDRESS_ID = a.ADDRESS_ID;