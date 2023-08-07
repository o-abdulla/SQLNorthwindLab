 --USE Northwind;
  -- SQL WITH NORTHWIND LAB
  
  --1
  SELECT * FROM Customers;

  --2
  SELECT DISTINCT Country FROM Customers;

  --3
  SELECT CustomerID FROM Customers
  WHERE CustomerID LIKE 'BL%';

  --4
  SELECT TOP 100 * FROM Orders;

  --5
  SELECT * FROM Customers
  WHERE PostalCode LIKE '1010' OR PostalCode LIKE '3012' OR PostalCode LIKE '12209' OR PostalCode LIKE '05023';

  --6
  SELECT * FROM Orders 
  WHERE ShipRegion IS NOT NULL;

  --7
  SELECT * FROM Customers
  ORDER BY Country, City;

  --8
  INSERT INTO Customers (CustomerID, CompanyName, City)
  VALUES ('OMAR', 'Uppercuts', 'Dearborn')

  --9
  UPDATE Orders
  SET ShipRegion = 'EuroZone'
  WHERE ShipCountry = 'France';

  --10
  DELETE FROM [Order Details]
  WHERE Quantity = 1;

  --11
  SELECT CustomerID FROM Orders
  WHERE OrderID = 10290;

  --12
  SELECT * FROM Customers
  FULL JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

  --13
  SELECT FirstName FROM Employees
  WHERE ReportsTo IS NULL;

  --14
  SELECT FirstName FROM Employees
  WHERE ReportsTo = 2;