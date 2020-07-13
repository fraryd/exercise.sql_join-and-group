
SELECT orders.status AS "Order Status", COUNT(orders.status) AS "# Orders"
FROM  orders
GROUP BY orders.status
ORDER BY orders.status ASC;
