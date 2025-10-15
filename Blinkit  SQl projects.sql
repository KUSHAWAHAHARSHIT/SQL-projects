how  databases; 
use harshit;
show tables;


##################### project 1 blinkit####################################################################
####start####
select  *from blinkit2;
# 1.Import Data from table Grocery Sales using the provided CSV File.
	select  *from blinkit2;

# 2.Write an SQL query to show all Item_Identifier
    select Item_Identifier from blinkit2;

# 3.Write an SQL query to show count of total Item_Identifier
    select count(item_identifier)from blinkit2;

# 4.Write an SQL query to show maximum Item Weight.
	select max(Item_Weight)from blinkit2;

# 5.Write an SQL query to show minimum Item Weight.
	select min(Item_Weight)from blinkit2;

# 6.Write an SQL query to show average Item_Weight.
	select avg(Item_Weight)from blinkit2;

# 7.Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Low Fat.
	 select count(Item_Fat_Content)from blinkit2
	 where Item_Fat_Content = "Low Fat";

# 8.Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Regular.
	select count(Item_Fat_Content)from blinkit2
	where Item_Fat_Content = "regular";

# 9.Write an SQL query to show maximum Item_MRP 
	select max(Item_MRP)from blinkit2;

#10.Write an SQL query to show minimum Item_MRP
	select min(Item_MRP)from blinkit2;

#11.Write an SQL query to show Item_Identifier , Item_Fat_Content ,Item_Type, Item_MRP whose Item_MRP is greater than 200.
	select Item_Identifier, Item_Fat_Content,Item_Type, Item_MRP from blinkit2 b 
    where  item_mrp >200;

# 12.Write an SQL query to show maximum Item_MRP WHERE Item_Fat_Content is Low Fat
	select max(item_mrp) from blinkit2 b  
	where item_fat_content = "Low Fat";

#13.Write an SQL query to show minimum Item_MRP whose Item_Fat_Content is Low Fat 
	select min(item_mrp) from blinkit2 b  
	where item_fat_content = "Low Fat";

#14.Write an SQL query to show ALL DATA WHERE item MRP is BETWEEN 50 to 100
	SELECT * FROM blinkit2 b
	WHERE item_mrp BETWEEN 50 AND 100;

#15.Write an SQL query to show ALL UNIQUE value of Item_Fat_Content
	select distinct(Item_Fat_Content) from blinkit2 b 
	
#16.Write an SQL query to show ALL UNIQUE value of  Item_Type 
	select distinct(Item_Type ) from blinkit2 b;

# 17. Write an SQL query to show ALL DATA in descending ORDER by Item MRP 
 	select  * from blinkit2 b 
 	where Item_MRP
 	order by Item_MRP desc ;

#18.Write an SQL query to show ALL DATA in ascending ORDER by Item_Outlet_Sales
	select  * from blinkit2 b 
 	where Item_Outlet_Sales
 	order by Item_Outlet_Sales asc ;

#19.Write an SQL query to show ALL DATA in ascending by Item_Type 
	select  * from blinkit2 b 
 	order by Item_Type;

#20.Write an SQL query to show DATA of item_type dairy & Meat
	SELECT * FROM blinkit2 b
    WHERE item_type IN ('Dairy', 'Meat')
    
#21.Write an SQL query to show ALL UNIQUE value of Outlet_Size 
	select distinct(Outlet_Size ) from blinkit2 b ;

#22.Write an SQL query to show ALL UNIQUE value of Outlet_Location_Type
      select distinct(Outlet_Location_Type) from blinkit2 b ; 

#23.Write an SQL query to show ALL UNIQUE value of Outlet_Type 
	select distinct(Outlet_Type) from blinkit2 b ; 

#24.Write an SQL query to show count of number of items by Item_Type  and order it in descending order
	select  Item_Type, COUNT(*) FROM blinkit2 b
	group by Item_Type
	order by Item_Type;

#25.Write an SQL query Item_Fat_Contentto show count of number of items by Outlet_Size and ordered it in ascending order 
    select  Item_Fat_Content, Outlet_Size, COUNT(*) FROM blinkit2 b
	group by Outlet_Size, Item_Fat_Content
	order by Outlet_Size asc;

#26.Write an SQL query to show count of number of items by Outlet_Type  and ordered it in descending order.
	 select  Outlet_Type, COUNT(*) FROM blinkit2 b
	group by Outlet_Type
	order by Outlet_Type desc ;

#27.Write an SQL query to show count of items by Outlet_Location_Type and order it indescending order
	select  Outlet_Location_Type, COUNT(*) FROM blinkit2 b
	group by Outlet_Location_Type
	order by Outlet_Location_Type asc ;

#28.Write an SQL query to show maximum MRP by Item_Type 
	select Item_Type, max(item_mrp)from blinkit2 b
	group BY Item_Type
	order by max(Item_mrp) desc;
	 

#29.Write an SQL query to show minimum MRP by Item_Type 
	select  min(item_mrp)from blinkit2 b 
	group by Item_MRP  limit 1;
	order  by Item_mrp;

#30.Write an SQL query to show minimum MRP by Outlet_Establishment_Year and order it in descending order.
	select Outlet_Establishment_Year, min(item_mrp) from blinkit2 b 
	group by Outlet_Establishment_Year 
	order by Outlet_Establishment_Year desc;


#31.Write an SQL query to show maximum MRP by Outlet_Establishment_Year and order it in descending order.
	select Outlet_Establishment_Year, max(item_mrp) from blinkit2 b 
	group by Outlet_Establishment_Year 
	order by Outlet_Establishment_Year desc;

#32.Write an SQL query to show average MRP by Outlet_Size and order it in descending order.
	select Outlet_Size, avg(item_mrp) from blinkit2 b 
	group by Outlet_Size 
	order by Outlet_Size desc;

#33.Write an SQL query to Average MRP by Outlet_Type and ordered in ascending order.
	select Outlet_Type, avg(item_mrp) from blinkit2 b 
	group by Outlet_Type
	order by Outlet_Type desc;

#34.Write an SQL query to show maximum MRP by Outlet_Type
	select Outlet_Type, max(item_mrp) from blinkit2 b 
	group by Outlet_Type
	order by Outlet_Type ;

#35.Write an SQL query to show maximum Item_Weight by Item_Type 
	select Outlet_Type, max(Item_Weight) from blinkit2 b 
	group by Outlet_Type
	order by Outlet_Type;

#36.Write an SQL query to show maximum Item_Weight by Outlet_Establishment_Year 
	select Outlet_Establishment_Year, max(Item_Weight) from blinkit2 b 
	group by Outlet_Establishment_Year 
	order by Outlet_Establishment_Year;

#37.Write an SQL query to show minimum Item_Weight by Outlet_Type 
	select  Outlet_Type , min(Item_Weight) from blinkit2 b 
	group by  Outlet_Type 
	order by  Outlet_Type ;

#38.Write an SQL query to show average Item_Weight by Outlet_Location_Type and arrange it by descending order
	select  Outlet_Location_Type, avg(Item_Weight) from blinkit2 b 
	group by  Outlet_Location_Type
	order by Outlet_Location_Type desc ;

#39.Write an SQL query to show maximum Item_Outlet_Sales by Item_Type
	select item_type, max(Item_Outlet_Sales) from blinkit2 b 
	group by Item_Type 
	order by item_type;

#40.Write an SQL query to show minimum Item_Outlet_Sales by Item_Type 
	select item_type, min(Item_Outlet_Sales) from blinkit2 b 
	group by Item_Type 
	order by item_type;

#41.Write an SQL query to show minimum Item_Outlet_Sales by Outlet_Establishment_Year 
	select Outlet_Establishment_Year, min(Item_Outlet_Sales) from blinkit2 b 
	group by Outlet_Establishment_Year 
	order by Outlet_Establishment_Year;

#42.Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Establishment_Year and order it by descending order
	select Outlet_Establishment_Year, max(Item_Outlet_Sales) from blinkit2 b 
	group by Outlet_Establishment_Year 
	order by Outlet_Establishment_Year desc;

#43.Write an SQL query to show average Item_Outlet_Sales by Outlet_Size and order it it descending order
	select Outlet_Size, max(Item_Outlet_Sales) from blinkit2 b 
	group by Outlet_Size
	order by Outlet_Size desc;	

#44.Write an SQL query to show average Item_Outlet_Sales by Outlet_Type
	select Outlet_Type, avg(Item_Outlet_Sales) from blinkit2 b 
	group by Outlet_Type
	order by Outlet_Type;

#45.Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Type 
	select Outlet_Type, max(Item_Outlet_Sales) from blinkit2 b 
	group by Outlet_Type
	order by Outlet_Type ;

#46.Write an SQL query to show total Item_Outlet_Sales by Item_Type 
	select Outlet_Type, sum(Item_Outlet_Sales) from blinkit2 b 
	group by Outlet_Type
	order by Outlet_Type ;

#47.Write an SQL query to show total Item_Outlet_Sales by Item_Fat_Content 
	select Item_Fat_Content , max(Item_Outlet_Sales) from blinkit2 b 
	group by Item_Fat_Content 
	order by Item_Fat_Content;

#48.Write an SQL query to show maximum Item_Visibility by Item_Type
	select  Item_Type , max(Item_Visibility) from blinkit2 b 
	group by  Item_Type
	order by  Item_Type;

#49.Write an SQL query to show Minimum Item_Visibility by Item_Type 
	select  Item_Type , min(Item_Visibility) from blinkit2 b 
	group by  Item_Type
	order by  Item_Type;

#50.Write an SQL query to show total Item_Outlet_Sales by Item_Type but only WHERE Outlet_Location_Type is Tier 1 
	select Item_Type, sum(Item_Outlet_Sales) from blinkit2 b 
	where Outlet_Location_Type = 'Tier 1'
	group by Item_Type;

#51.Write an SQL query to show total Item_Outlet_Sales by Item_Type WHERE Item_Fat_Content is ONLY Low Fat & LF;
	select Item_Type, sum(Item_Outlet_Sales) from blinkit2 b 
	where Item_Fat_Content = 'low fat' or 'Lf'
	group by Item_Type;
