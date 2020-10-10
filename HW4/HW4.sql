SELECT o.orderNumber, od.priceEach, od.quantityOrdered, pr.productName, pr.productLine, c.city, c.country, o.orderDate
  FROM orders o
INNER JOIN orderDetails od USING (orderNumber)
INNER JOIN products pr ON od.productCode = pr.productCode
INNER JOIN customers c USING (customerNumber)