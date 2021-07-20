create table eda(Ship_mode varchar, Segment varchar, Country varchar, City varchar, statee varchar, Postal_Code varchar, Region varchar,
				 Category varchar, Sub_Category varchar, Sales varchar, Quantity varchar, Discount varchar, Profit numeric);

copy eda from '/home/android/Downloads/SampleSuperstore.csv' delimiter ',' csv header; -- passing the input 

delete from eda where profit > 10.0;	-- to delete the profit greater than 10

-- to see overall profit range 
select ship_mode, segment, city, statee, region, category, sub_category,  sales, profit from eda order by profit asc;

-- ordering the data by state, category, profit columns
select * from eda order by statee, category, profit; 

select ship_mode, segment, city, statee, region, category, sub_category,  sales, profit from eda order by city;

select ship_mode, segment, city, statee, region, category, sub_category,  sales, profit from eda order by region;

select ship_mode, segment, city, statee, region, category, sub_category,  sales, profit from eda order by statee, category;

alter table eda alter column profit type integer;

ALTER TABLE eda ALTER COLUMN profit TYPE numeric USING profit::numeric;

delete from eda where profit > 10.0;
