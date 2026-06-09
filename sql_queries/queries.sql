SELECT COUNT(*) AS total_rows
FROM clean_superstore_sales_dashboard;

SELECT region, SUM(sales) AS total_sales
FROM clean_superstore_sales_dashboard
GROUP BY region
ORDER BY total_sales DESC;

SELECT product_name, SUM(sales) AS total_sales
FROM clean_superstore_sales_dashboard
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;

SELECT EXTRACT(YEAR FROM order_date) AS order_year,
       SUM(sales) AS total_sales
FROM clean_superstore_sales_dashboard
GROUP BY order_year
ORDER BY order_year;

SELECT category, SUM(sales) AS total_sales
FROM clean_superstore_sales_dashboard
GROUP BY category
ORDER BY total_sales DESC;

SELECT AVG(sales) AS avg_order_value
FROM clean_superstore_sales_dashboard;
