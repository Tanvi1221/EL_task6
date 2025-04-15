SELECT
    YEAR(o.orderDate) AS year,
    MONTH(o.orderDate) AS month,
    SUM(od.quantityOrdered * od.priceEach) AS total_revenue,
    COUNT(DISTINCT o.orderNumber) AS total_orders
FROM
    orders o
JOIN
    orderdetails od ON o.orderNumber = od.orderNumber
GROUP BY
    YEAR(o.orderDate),
    MONTH(o.orderDate)
ORDER BY
    year,
    month;

SELECT
    EXTRACT(YEAR FROM o.orderDate) AS order_year,
    EXTRACT(MONTH FROM o.orderDate) AS order_month,
    SUM(od.quantityOrdered * od.priceEach) AS total_revenue,
    COUNT(DISTINCT o.orderNumber) AS total_orders
FROM
    orders o
JOIN
    orderdetails od ON o.orderNumber = od.orderNumber
WHERE
    o.orderDate BETWEEN '2023-01-01' AND '2023-12-31'  -- f. Limit to specific time period
GROUP BY
    EXTRACT(YEAR FROM o.orderDate),
    EXTRACT(MONTH FROM o.orderDate)                    -- b. Group by year/month
ORDER BY
    order_year,
    order_month;                                       -- e. Order by for sorting



SELECT
    EXTRACT(YEAR FROM o.orderDate) AS order_year,
    EXTRACT(MONTH FROM o.orderDate) AS order_month,
    SUM(od.quantityOrdered * od.priceEach) AS total_revenue,
    COUNT(DISTINCT o.orderNumber) AS total_orders
FROM
    orders o
JOIN
    orderdetails od ON o.orderNumber = od.orderNumber
GROUP BY
    EXTRACT(YEAR FROM o.orderDate),
    EXTRACT(MONTH FROM o.orderDate)
ORDER BY
    order_year,
    order_month;
