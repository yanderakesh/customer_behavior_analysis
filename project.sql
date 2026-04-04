create database da_project_db;

use da_project_db ;

select * from customer_sales ;

-- what is the total revenue generate by male vs female customers ? 

select  gender , sum(purchase_amount) as Total_revenue 
from customer_sales 
group by gender ;

-- which customer uesd a discount but still spent more than the average puechage amount ?

select customer_id , purchase_amount from customer_sales 
where discount_applied ='yes' and purchase_amount >= (
select avg(purchase_amount) from customer_sales ) ;

-- which are the top 5 products with highest avg review rating ? 
select item_purchased , round(avg(review_rating ) , 2 )  as rating 
from customer_sales  
group by item_purchased
order by avg(review_rating) desc  
limit 5 ;

-- compare the avg purchase amount between standard and express shipping ? 

select shipping_type , round(avg(purchase_amount) , 2)  as avg_amount from customer_sales 
where shipping_type in ('standard','express') 
group by shipping_type ;

-- Do subscribed customer spend more ? compare avg spend and total revenue between subscribers 
-- and non-subscribers ? 

select subscription_status , count(customer_id) as count , 
round(avg(purchase_amount) , 2 ) as avg_amount ,
round(sum(purchase_amount) , 2) as total_amount 
from customer_sales 
group by subscription_status 
order by avg_amount , total_amount desc ;

-- which 5 products having highest percentage of purchase with discount applied ? 

select item_purchased , 
round(sum(case when discount_applied ='yes' then 1  else 0 end  )
 / count(*) * 100 , 2 ) discount_rate
from customer_sales 
group by item_purchased 
order by discount_rate desc limit 5 ;

-- segment customers into new , returning , and loyal based on their total number of previous 
-- purchases , and show the each segement ? 

select customer_category , count(*) as count from (select customer_id , case
when previous_purchases = 1 then 'new'
when previous_purchases between 1 and 10 then 'returning'
else 'loyal'
end as customer_category from customer_sales ) t 
group by customer_category ;

-- what are the top 3 most purchaged product with in each category ? 

with ranking as (
select item_purchased , category , count(customer_id) as counting ,
 row_number()over(partition by category order by count(*) desc ) 
as ranking from customer_sales 
group by item_purchased , category ) 
select * from ranking 
where ranking <= 3 ;

-- Are customers who are repat buyers ( more than 5 precious purchase ) as also likely to subsceribe ? 

select subscription_status ,
count(customer_id) as counting from customer_sales 
where previous_purchases > 5 
group by subscription_status ;

select age_group , sum(purchase_amount) as total_revenue from customer_sales 
group by age_group 
order by total_revenue desc ;

GRANT ALL PRIVILEGES ON da_project_db.* TO 'root'@'localhost';
FLUSH PRIVILEGES;
