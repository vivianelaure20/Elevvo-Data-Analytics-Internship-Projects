-- Top-selling Products

SELECT 
  t.name AS track_name,
  SUM(il.quantity) AS units_sold
FROM 
  track AS t
JOIN 
  invoice_line AS il ON t.track_id = il.track_id
GROUP BY 
  t.name
ORDER BY 
  units_sold DESC
LIMIT 10;

-- Total revenue by country
SELECT
  c.country,
  COUNT(DISTINCT c.customer_id) AS unique_buyers,
  COUNT(i.invoice_id) AS number_of_invoices,
  SUM(i.total) AS total_revenue
FROM
  customer c
JOIN
  invoice i ON c.customer_id = i.customer_id
GROUP BY
  c.country
ORDER BY
  total_revenue DESC;

  
-- Monthly Performance 
SELECT
  DATE_TRUNC('month', i.invoice_date) AS month,
  SUM(i.total) AS monthly_revenue,
  COUNT(i.invoice_id) AS total_orders
FROM
  invoice i
GROUP BY
  month
ORDER BY
  month;

--Top 5 Customers by Total Spending

SELECT
  c.customer_id,
  c.first_name || ' ' || c.last_name AS customer_name,
  SUM(i.total) AS total_spent,
  RANK() OVER (ORDER BY SUM(i.total) DESC) AS rank
FROM
  customer c
JOIN
  invoice i ON c.customer_id = i.customer_id
GROUP BY
  c.customer_id, customer_name
ORDER BY
  rank
LIMIT 5;

--Top Genres by Revenue

Select 
	g.name AS genre_name,
	SUM(il.unit_price * il.quantity) AS revenue
From 
	genre g
JOIN 
	track t ON g.genre_id = t.genre_id
JOIN 
	invoice_line il ON t.track_id = il.track_id
Group BY
	g.name
Order By 
	revenue DESC
Limit 10;

-- Revenue by Artist

SELECT
	ar.name As artist_name,
	SUM (il.unit_price * il.quantity) AS revenue
FROM
	artist ar
JOIN 
	album al ON ar.artist_id = al.artist_id
JOIN 
	track t ON al.album_id = t.album_id
JOIN 
	invoice_line il ON t.track_id = il.track_id
Group BY
	ar.name
Order By
	revenue DESC
Limit 10;

-- City Revenue

SELECT
  c.city,
  SUM(i.total) AS total_revenue,
  COUNT(DISTINCT c.customer_id) AS unique_customers
FROM
  customer c
JOIN
  invoice i ON c.customer_id = i.customer_id
GROUP BY
  c.city
ORDER BY
  total_revenue DESC;