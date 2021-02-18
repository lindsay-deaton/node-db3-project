-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select 
    p.ProductName, c.CategoryName
from Product p
join Category c on p.CategoryId = c.Id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT 
    s.CompanyName,
    o.CustomerId
  FROM [Order] o
  JOIN
  Shipper s 
  ON 
  o.ShipVia = s.Id
 WHERE o.OrderDate < '2012-8-9';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select
 p.productname, o.quantity
 FROM product p
 join orderdetail o ON p.id = o.productid
 where o.orderid =10251

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select
o.id, 
c.companyname, 
e.lastname
FROM [order] o
join customer c 
ON c.id = o.customerid
join employee e 
ON e.id = o.employeeid
