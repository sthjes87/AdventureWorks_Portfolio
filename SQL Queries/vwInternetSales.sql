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
  ROUND(UnitPrice,2) UnitPrice, 
  ROUND(SalesAmount,2) SalesAmount,
  ROUND(TotalProductCost,2) TotalProductCost,
  ROUND(TaxAmt,2) TaxAmt,
  ROUND(Freight,2) Freight,
  CONVERT(
    VARCHAR(10), 
    OrderDate, 
    103
  ) AS 'OrderDate' 
FROM 
  FactInternetSales 
WHERE 
  LEFT (OrderDateKey, 4)>= YEAR(
    GETDATE()
  )-2; --Ensures we alaways only bring two years of date from extraction