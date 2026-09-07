CREATE TABLE ZEPTO(
   sku_id SERIAL primary key,
   category VARCHAR(120),
   name VARCHAR(150) NOT NULL,
   mrp NUMERIC(8,2),
   discountpercent NUMERIC(5,2),
   availableQuantity INTEGER,
   discountsellingprice NUMERIC(8,2),
   WeightIngms INTEGER,
   outofstock BOOLEAN,
   quantity INTEGER
   );

   ---data exploration

   ---count of rows

  SELECT COUNT(*) FROM zepto;
  
  --sample data
   SELECT * FROM zepto
   LIMIT 10
   --Null values
   SELECT * FROM zepto
   WHERE name IS NULL
   OR
   category IS NULL
   OR
   mrp IS NULL
   OR
   discountpercent IS NULL
   OR
   availablequantity IS NULL
   OR
   discountsellingprice IS NULL
   OR
   weightingms IS NULL
   OR
   outofstock IS NULL
   OR
   quantity IS NULL;
   
   ---different product categories
   SELECT DISTINCT category
   FROM zepto
   ORDER BY category

   --Product in stock vs out of stock
   SELECT outofstock, COUNT(sku_id)
   FROM zepto
   GROUP BY outofstock;

   --Product names present multipletimes
   SELECT name, count(sku_id) AS "Number of skus"
   FROM zepto
   GROUP BY name
   HAVING count(sku_id)>1
   ORDER BY count(sku_id) DESC;

   ---Data cleaning

   --Products with price=0
   SELECT *
   FROM zepto
   WHERE mrp=0 OR discountsellingprice=0;

   DELETE FROM zepto
   WHERE mrp=0

   ---convert paise to rupees
   UPDATE zepto
   SET mrp=mrp/100.0
   discountsellingprice=discountsellingprice/100.0;

   SELECT mrp, discountsellingprice FROM zepto

  
   --Q1. Find the top-10 best values products based on the discount percentage
   SELECT DISTINCT name, mrp, discountpercent
   FROM zepto
   ORDER BY discountpercent DESC
   LIMIT 10;

   --Q2.What are the products with high mrp but out of stock
   SELECT DISTINCT name, mrp
   FROM zepto
   WHERE outofstock=TRUE AND mrp>300
   ORDER BY mrp DESC

   --Q3.Caluculate estimated revenue per each category
   SELECT category,SUM(discountsellingprice*availablequantity) AS total_revenue
   FROM zepto
   GROUP BY category
   ORDER BY total_revenue;

   --Q4. find all Products where MRP is greater than 500 and discount is less than 10%
   SELECT DISTINCT name,mrp, discountpercent
   FROM zepto
   WHERE mrp>500 AND discountpercent<10
   ORDER BY mrp DESC, discounTpercent DESC

   --Q5. Identify top 5 categories offering the highest average discount.
   SELECT category, ROUND(AVG(discountpercent),2)
   FROM zepto
   GROUP BY category
   ORDER BY category desc
   LIMIT 5
   --Q6. find the price per gram for products above 100g sort by best value
   
   SELECT distinct name, weightingms, discountsellingprice,
   ROUND(discountsellingprice/weightingms,2) AS price_per_gram
   FROM zepto
   WHERE weightingms>=100
   ORDER BY price_per_gram;

   --Q7. Group the products into categories like low, medium, bulk

   select distinct name, weightingms,
   CASE WHEN weightingms < 1000 THEN 'low'
        WHEN weightingms < 5000 THEN 'medium'
		ELSE 'bulk'
		END AS weight_category
		FROM zepto;
	--Q8. what is the total inventory weight per category
	SELECT category, sum(weightingms*availablequantity) AS total_weight
	FROM zepto
	GROUP BY category
	ORDER BY total_weight
   
   
   
   




















   