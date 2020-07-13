SELECT orders.status AS "Order Status", COUNT(orders.status) AS "# Orders"
FROM orders
ORDER BY orders.status ASC;
