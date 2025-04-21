CREATE VIEW vwInternetSales AS 
SELECT 
  ProductKey, 
  OrderDateKey, 
  DueDateKey, 
  ShipDateKey, 
  CustomerKey, 
  SalesOrderNumber, 
  SalesOrderLineNumber, 
  OrderQuantity, 
  UnitPrice, 
  SalesAmount, 
  CONVERT(
    VARCHAR(10), 
    OrderDate, 
    103
  ) AS 'OrderDate' 
FROM 
  FactInternetSales 
WHERE 
  LEFT (OrderDateKey, 2)>= YEAR(
    GETDATE()
  )-2 --Ensures we alaways only bring two years of date from extraction

