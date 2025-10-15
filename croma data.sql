show databases;
use startersql;
show tables;
select * from product_inventory;
select * from manufacturers;

#1.           Select the names of all the products in the inventory.
			  select Product_Name from product_inventory;
            
#2.           Select the names and the prices of all the products in the inventory.
			  select Product_Price from product_inventory;
              
#3.           Use an Alias "Name" and print all the product names
			  select  Product_Name as alias_name from product_inventory;
              
#4.           Select the name of the products with a price less than or equal to 8000 Indian Rupees.
			   select  Product_Name from product_inventory where Product_Price <= 8000;
               
#5.           Select all the products with a price between 2000 and 10000 Indian Rupees.
			  select Product_Name from product_inventory where Product_Price between 2000 and 10000;
              
#6.           List the details of all such products whose manufacturer_code is 6.
			  select * from manufacturers where  manufacturer_code =6;
              
#7.           List the details of all such products whose manufacturer_code is 6 as well as their price is greater than 5000.
			 select * from
             product_inventory as p
             inner join manufacturers as m
			on p.manufacturer_code = m.manufacturer_code
			WHERE m.manufacturer_code = 6
            AND p.product_price > 5000;
               
               
#8.           List the details of all such products other than whose manufacturer_code is 6.
			select p.Product_Name, p.Product_Price, m.Manufacturer_Name, m.Manufacturer_Code
            from product_inventory as p
            inner join manufacturers as m
            on p.manufacturer_code=p.manufacturer_code
            where m.manufacturer_code=6;
            
#9.           Select the name of the products whose name starts with 'M'.
				select Product_Name from product_inventory where Product_Name LIKE 'M%';
                
#10.      List the name of products whose name starts with "M" and ends with "D".
				select Product_Name from product_inventory where Product_Name LIKE 'M%' and Product_Name LIKE '%D';
    
#11.      List the name of products which starts from "M" ends with "D" but also has ONLY 9 characters in between.
		  select Product_Name from product_inventory where Product_Name LIKE 'M%' and Product_Name LIKE '%D' or character_length(9);
        
#12.      Concatenate name of the product with its price in a single column.
		  select CONCAT(Product_Name, ' ',product_price) As Name_price from product_inventory ;
            
#13.      Select the name and price in dollars (i.e. the price must be divided by 80.)
		  select Product_Name, product_price/80 as dollars  from product_inventory;

#15.      Compute the average price of all products with manufacturer code equal to 3.
		select avg(p.product_price), m.manufacturer_code
        from product_inventory as p
        inner join manufacturers as m
        on p.manufacturer_code=m.manufacturer_code
        where m.manufacturer_code=3;

#16.      What is the total cost of products where manufacturer_code is 2?
		  select  sum(p.product_price) as Total, m.manufacturer_code
          from product_inventory as p
          inner join manufacturers as m
		  on p.manufacturer_code=m.manufacturer_code
         where m.manufacturer_code=3; 
         
         
#17.     Compute the number of products with a price greater than or equal to 5000.
	    select product_price, count(Product_Name) from product_inventory
        where product_price  <= 5000
        group by product_price;
        
    
#18.      Select the name and price of all products with a price larger than or equal to 5000 
#Indian Rupees and sort them by price (in descending order), and then by their name (in ascending order).
		select Product_Name, Product_Price 
        from product_inventory
        where Product_Price >=5000
        order by Product_Name , Product_Price desc;
            
#19.      Select all the data from the inventory, including all the data for each product's manufacturer.
			select p.*, m.*
            from product_inventory as p
          inner join manufacturers as m
		  on p.manufacturer_code=m.manufacturer_code;
            
            
            
#20.      Select the product name, price, and manufacturer name of all the products.
			select p.Product_Name, p.Product_Price, m.Manufacturer_Name
            from product_inventory as p
          inner join manufacturers as m
		  on p.manufacturer_code=m.manufacturer_code;
#21.      Select the average price of each manufacturer's products, showing only the manufacturer's code.

			select p.Product_Price, m.Manufacturer_Name, m.manufacturer_code
			from product_inventory as p
			inner join manufacturers as m
			on p.manufacturer_code=m.manufacturer_code;
            
#22.      Select the average price of each manufacturer's products, showing the manufacturer's name.
			select  m.Manufacturer_Name, 
            avg(p.Product_Price) as avg_price
            from product_inventory as p
			inner join manufacturers as m 
            on p.manufacturer_code=m.manufacturer_code
            group by m.Manufacturer_Name;
            
            
#23.      Select the names of manufacturer whose products have an average price greater than or equal to 5000 Indian Rupees.
				SELECT m.Manufacturer_Name
				FROM product_inventory AS p
				JOIN manufacturers AS m
				ON p.Manufacturer_Code = m.Manufacturer_Code
				GROUP BY m.Manufacturer_Name
				HAVING AVG(p.Product_Price) >= 5000;
#24.      Select the name and price of the cheapest product.
			select Product_Name, Product_Price from product_inventory
            order by Product_Price asc 
            limit 1;
#25.      Select the name of each manufacturer along with the name and price of its most expensive product.
			SELECT 
    m.Manufacturer_Name,
    p.Product_Name,
    p.Product_Price
FROM product_inventory p
JOIN manufacturers m 
    ON p.Manufacturer_Code = m.Manufacturer_Code
WHERE p.Product_Price = (
    SELECT MAX(p2.Product_Price)
    FROM product_inventory p2
    WHERE p2.Manufacturer_Code = p.Manufacturer_Code
);
#26.      Add a new product: Speaker with a price 1000 INR and manufacturer code 10.
		INSERT INTO product_inventory (Product_Name, Product_Price, Manufacturer_Code)
		VALUES ('Speaker', 1000, 10);

#27.      Update the name of the product "Speakers" to "Wired Speakers"
			UPDATE product_inventory
			SET Product_Name = 'Wired Speakers'
			WHERE Manufacturer_Code = '10';


#28.      Apply a 10% discount to all products.
	
         UPDATE product_inventory
		SET Product_Price = Product_Price * 1.10;



#29.      Apply a 10% discount to all products with a price greater than or equal to 5000 Indian Rupees.
			UPDATE product_inventory
			SET Product_Price = Product_Price * 0.90
			WHERE Product_Price >= 5000;

#30.      List the name of the products along with their manufacturer name and price and arrange them as per their price.
				SELECT p.Product_Name, m.Manufacturer_Name, p.Product_Price
				FROM product_inventory AS p
				INNER JOIN manufacturers AS m
				ON p.Manufacturer_Code = m.Manufacturer_Code
				ORDER BY p.Product_Price ASC;  -- Use DESC for highest price first

            
