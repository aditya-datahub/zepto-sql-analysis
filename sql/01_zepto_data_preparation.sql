create database zepto_sql_project;
use zepto_sql_project;

CREATE TABLE zepto (
    Category VARCHAR(255),
    name VARCHAR(255) NOT NULL,
    mrp INT,
    discountPercent INT,
    availableQuantity INT,
    discountedSellingPrice INT,
    weightInGms INT,
    outOfStock VARCHAR(10),
    quantity INT
);

-- EDA ( Exploratory Data Analysis )

-- count of rows
select count(*) from zepto;

-- sample data 
SELECT * FROM zepto limit 10;

-- checking rows which have null values
SELECT
    COUNT(*) AS Total_Rows,
    SUM(Category IS NULL) AS Null_Category,
    SUM(name IS NULL) AS Null_Name,
    SUM(mrp IS NULL) AS Null_MRP,
    SUM(discountPercent IS NULL) AS Null_Discount,
    SUM(availableQuantity IS NULL) AS Null_AvailableQuantity,
    SUM(discountedSellingPrice IS NULL) AS Null_SellingPrice,
    SUM(weightInGms IS NULL) AS Null_WeightInGms,
    SUM(outOfStock IS NULL) AS Null_OutOfStock,
    SUM(quantity IS NULL) AS Null_Quantity
FROM
    zepto;
    
-- different product categories
select distinct category from zepto order by category;

-- products in stock vs out of stock
select outOfStock , count(*)
from zepto 
group by outOfStock;

-- product names present multiple times
select name, count(*) as Total_Occurrences 
from zepto
group by name 
having count(name)>1 
order by count(*) desc;


-- data cleaning

-- products with price = 0
select * from zepto where mrp = 0 or discountedSellingPrice = 0;

delete from zepto where mrp = 0;

-- convert paise to rupees
update zepto 
set mrp = mrp/100.0,
discountedSellingPrice = discountedSellingPrice/100.0;

select mrp, discountedSellingPrice from zepto;

select * from zepto;
