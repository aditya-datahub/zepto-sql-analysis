-- Count total records in the 'zepto' table after initial data cleaning and transformation.
SELECT COUNT(*) AS total_clean_records FROM zepto;

-- sample data
select * from zepto limit 10;

-- Q1. Find the top 10 best-value products based on discount percentage
SELECT DISTINCT
    name,
    mrp,
    discountPercent
FROM zepto 
ORDER BY discountPercent DESC
LIMIT 10;

-- Q2. Which are the Products with High MRP but Out of Stock
SELECT DISTINCT
    name,
    mrp
FROM zepto 
WHERE 
    outOfstock = 'TRUE' 
    AND mrp > 300 
ORDER BY mrp DESC;

-- Q3. Calculate Estimated Revenue for each category
SELECT 
    category,
    SUM(discountedSellingPrice * availableQuantity) AS Total_Revenue
FROM zepto 
GROUP BY category
ORDER BY Total_Revenue;

-- Q4. Find all products where MRP is greater than 500 and discount is less than 10 %
SELECT DISTINCT
    name,
    mrp,
    discountPercent
FROM zepto
WHERE 
    mrp > 500 
    AND discountPercent < 10
ORDER BY 
    mrp DESC,
    discountPercent DESC;

-- Q5. Identify the top 5 categories offering the highest averages discount percentage.
SELECT 
    category,
    ROUND(AVG(discountPercent), 2) AS Avg_Discount_Percent
FROM zepto 
GROUP BY category
LIMIT 5;

-- Q6. Find the price per gram for products above 100 gm and sort by best value
SELECT
    DISTINCT name,
    discountedSellingPrice,
    weightInGms,
    ROUND((discountedSellingPrice / weightInGms), 2) AS price_per_gram
FROM zepto
WHERE weightInGms >= 100
ORDER BY price_per_gram;

-- Q7. Group the products into categories like low, medium, bulk
SELECT 
    DISTINCT name,
    weightInGms,
    CASE 
        WHEN weightInGms < 1000 THEN 'Low'
        WHEN weightInGms < 5000 THEN 'Medium'
        ELSE 'Bulk'
    END AS weight_category
FROM zepto;

-- Q8.What is the total inventory weight per Category
SELECT 
    Category,
    SUM(weightInGms * availableQuantity) AS Total_Inventory_Weight
FROM zepto
GROUP BY Category
ORDER BY Total_Inventory_Weight;

