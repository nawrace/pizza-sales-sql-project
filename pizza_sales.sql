-- Top 5 Best-Selling Pizzas
SELECT pizza_name, SUM(quantity) AS total_sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_sold DESC
LIMIT 5;

-- Total Revenue
SELECT SUM(total_price) AS total_revenue
FROM pizza_sales;

-- Most Popular Pizza Size
SELECT pizza_size, SUM(quantity) AS total_sold
FROM pizza_sales
GROUP BY pizza_size
ORDER BY total_sold DESC;

-- Revenue by Pizza Category
SELECT pizza_category, SUM(total_price) AS revenue
FROM pizza_sales
GROUP BY pizza_category
ORDER BY revenue DESC;

-- Average Order Value
SELECT AVG(total_price) AS average_order_value
FROM pizza_sales;
