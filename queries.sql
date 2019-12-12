-- Multi-Table Query practice

-- Display the productName and CategoryName for all products in the database. Shows 77 records.
select p.id, p.productName, Cat.id, Cat.CategoryName
from product as p
join Category as Cat
  on p.CategoryId = Cat.id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT o.id, o.ShipVia, o.OrderDate, S.CompanyName, S.id 
FROM [order] as o
JOIN Shipper as S
  on o.ShipVia = S.id
  WHERE o.OrderDate < '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by productName. Shows 3 records.
SELECT OD.OrderId, OD.quantity, p.productName 
FROM OrderDetail as OD
JOIN [Order] as o ON OD.OrderId = o.Id
Join product as p ON OD.productId = p.id
WHERE o.ID = 10251
ORDER BY p.productName

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT C.CompanyName, o.id, o.EmployeeId, o.CustomerId, E.LastName as "Employee Last Name"
FROM [Order] as o
JOIN Customer as C ON C.id = o.CustomerId
JOIN Employee as E ON E.id = o.EmployeeId