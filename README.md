# Task

## Create the DB schema script with the following entities
 find the ([Create tables.sql](https://github.com/mahmoudelhussain/session_3/blob/ba1dad2a92273983a5572cc13edb1fffcee975d7/Create%20tables.sql)).
 
## Identify the relationships between entities
 TABLE `product`  `category` 

  table order_details to  order : [ many to one ]
  table order to customer  : [ many to one ]
  table order_details to  product :  : [ many to Many ]


## Draw the ERD diagram of this sample schema
![ERD](https://github.com/mahmoudelhussain/session_3/blob/a8ee74a5c3ba73fe06f46c9b81070bc2c5059204/ERD.png)

## Write an SQL query to generate a daily report of the total revenue for a specific date.

## Write an SQL query to generate a monthly report of the top-selling products in a given month.

## Write a SQL query to retrieve a list of customers who have placed orders totaling more than $500 in the past month.
Include customer names and their total order amounts. [Complex query].


## How we can apply a denormalization mechanism on customer and order entities
