# Task

## Create the DB schema script with the following entities
 find the ([Create tables.sql](https://github.com/mahmoudelhussain/session_3/blob/ba1dad2a92273983a5572cc13edb1fffcee975d7/Create%20tables.sql)).
 
## Identify the relationships between entities.  
  
TABLE product to category : [many to one].  
TABLE order_details to  order : [ many to one ].  
TABLE order to customer  : [ many to one ].  
TABLE order_details to  product :  : [ many to Many ].  
  
  
## Draw the ERD diagram of this sample schema
![ERD](https://github.com/mahmoudelhussain/session_3/blob/1e438c8e52f4433a5d995f156742f4874a206259/ERD%202.png)
  
## Write an SQL query to generate a daily report of the total revenue for a specific date.  
Select sum(total_amount)  
From order  
Where order_date = '2024-08-01';  
  
## Write an SQL query to generate a monthly report of the top-selling products in a given month.  
  
select od.order_detail_id, od.order_id , od.product_id , p.name , quantity , unit_price , total_amount  
from order_details od  
join product p on od.product_id = p.product_id  
join java_mentorship.order o on o.order_id = od.order_id  
where month(o.order_date ) = 8  
order by quantity desc;  
    
## Write a SQL query to retrieve a list of customers who have placed orders totaling more than $500 in the past month. Include customer names and their total order amounts. [Complex query].  

select CONCAT(c.first_name,' ', c.LAST_NAME) as Customer_name , sum(o.total_amount) as 'total order amounts'  
from java_mentorship.customer c  
join java_mentorship.order o on c.customer_id = o.customer_id   
where o.total_amount > 500   
and month( o.order_date ) = month(current_date()) -1  
group by CONCAT(c.first_name,' ', c.LAST_NAME) ;  
  
## How we can apply a denormalization mechanism on customer and order entities    
  ![order and customer in one table](https://github.com/mahmoudelhussain/session_3/blob/4c7ff7453b400f7c83b50f159c5402be0d52427a/Screenshot%202024-08-20%20002657.png)  
  
