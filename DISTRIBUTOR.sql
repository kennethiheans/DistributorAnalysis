create table distributor(
distributor_id varchar,
	distributo_name varchar,
	country text,
	product_code varchar,
	product varchar,
	sales_channel varchar,	
	date_sold date,
	month_sold int,
	quantity int,
	unit_price float,	
	revenue float);
	
	copy distributor
	from 'C:\Users\Public\distributor_tabs.csv'
	delimiter ',' csv
	header;
	
	/*question 1-find the number of sales for each of the fllwing products
	pure soft detergent-100ml*/
	
	select *
	from distributor;
	
	select product, sum (quantity)as number_ofsales
	from distributor
	where product ilike '%ent - 100ml%'
	group by product;
	
	/*pure soft detergent-200ml*/
	
	select product, sum (quantity) as number_ofsales
	from distributor
	where product ilike '%ent - 200ml%'
	group by product;
	
	/*pure soft detergent-250ml*/
	select product, sum (quantity) as number_ofsales
	from distributor
	where product ilike '%ent - 250ml%'
	group by product;
	
	/*pure soft detergent-500ml*/
	
	select product, sum (quantity) as number_ofsales
	from distributor
	where product ilike '%ent - 500ml%'
	group by product;
	
	/*Detafast Remover-100ml*/
	
	select product, sum (quantity) as number_ofsales
	from distributor
	where product ilike '%over - 100ml%'
	group by product;
	
	/*Detafast Remover-200ml*/
	
	select product, sum (quantity) as number_ofsales
	from distributor
	where product ilike '%over - 200ml%'
	group by product;
	
	/*Detafast Remover-800ml*/
	
	select product, sum (quantity) as number_ofsales
	from distributor
	where product ilike '%over - 800ml%'
	group by product;
	
	/*super soft-250ml*/
	
    select product, sum (quantity) as number_ofsales
	from distributor
	where product ilike '%soft - 250ml%'
	group by product;
	
	/*super soft-500ml*/
	select product, sum (quantity) as number_ofsales
	from distributor
	where product ilike '%soft - 500ml%'
	group by product;
	
	/*super soft-1litre*/
	select product, sum (quantity) as number_ofsales
	from distributor
	where product ilike '%soft - 1%'
	group by product;
	
	/*supersoft bulk-2litre*/
	select product, sum (quantity) as number_ofsales
	from distributor
	where product ilike '%Bulk - 2%'
	group by product;
	
	/*count the number of sales for which revenue meets the following criteria
	a. greater than $1000*/
	
	select product, revenue, count (quantity)as number_ofsales
	from distributor
	where revenue > 1000
	group by product, revenue
	order by revenue;
	
	/* less than $1000*/
	select product, revenue, count (quantity)as number_ofsales
	from distributor
	where revenue < 1000
	group by product, revenue
	order by revenue;
	
	/* equals $1000*/
	select product, revenue, count (quantity)as number_ofsales
	from distributor
	where revenue =1000
	group by product, revenue
	order by revenue;
	
	/* does not equal $1000*/
	select product, revenue, count (quantity)as number_ofsales
	from distributor
	where revenue != 1000
	group by product, revenue
	order by revenue;
	
	/*count the number of sales occuring i each of the sales channels*/
	/*online*/
	select sales_channel, 
	count (quantity)as number_ofoccurance
	from distributor
	where sales_channel = 'Online'
	group by sales_channel;
	
	/*direct*/
	select sales_channel, 
	count (quantity)as number_ofoccurance
	from distributor
	where sales_channel = 'Direct'
	group by sales_channel;
	
	/*retail*/
	select sales_channel, 
	count (quantity)as number_ofoccurance
	from distributor
	where sales_channel = 'Retail'
	group by sales_channel;
	
	/*count the number of sales with quantities less than 100, 
	greather than 100, equal to 100, or not equal to 100*/
	/*less than 100*/
	select distinct product, count (quantity) as number_ofsales
	from distributor
	where quantity < 100
	group by product;
	
	/*greather than 100*/
		select distinct product, count (quantity) as number_ofsales
	from distributor
	where quantity > 100
	group by product;
	
	/*equal 100*/
		select distinct product, count (quantity) as number_ofsales
	from distributor
	where quantity = 100
	group by product;
	
	/*not equal to 100*/
		select distinct product, count (quantity) as number_ofsales
	from distributor
	where quantity != 100
	group by product;
	
	
	
	
	
	
	