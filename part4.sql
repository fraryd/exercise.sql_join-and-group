
SELECT products.productLine AS "Product Line", orderdetails.quantityOrdered AS "# Sold"
FROM products
LEFT JOIN orderdetails
ON products.productCode = orderdetails.productCode
ORDER BY orderdetails.quantityOrdered DESC;
