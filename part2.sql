SELECT products.productName AS "Product Name", orderdetails.quantityOrdered AS "Total # Ordered", 
CONCAT (orderdetails.quantityOrdered * orderdetails.priceEach) AS "Total Sale"
FROM products
LEFT JOIN orderdetails
ON products.productCode=orderdetails.productCode
ORDER BY (orderdetails.quantityOrdered * orderdetails.priceEach) DESC;