CREATE VIEW vwCustomer AS 
SELECT 
  Customer.CustomerKey, 
  Customer.GeographyKey, 
  CONCAT(
    Customer.FirstName, ' ', Customer.LastName
  ) AS [CustomerName], 
  CONVERT(
    VARCHAR(10), 
    Customer.BirthDate, 
    103
  ) AS [BirthDate], 
  REPLACE(
    REPLACE(
      Customer.MaritalStatus, 'M', 'Married'
    ), 
    'S', 
    'Single'
  ) AS [MaritalStatus], 
  REPLACE(
    REPLACE(Customer.Gender, 'M', 'Male'), 
    'F', 
    'Female'
  ) AS [Gender], 
  Customer.YearlyIncome, 
  CONVERT (
    VARCHAR(10), 
    Customer.DateFirstPurchase, 
    103
  ) AS [DateFirstPurchase], 
  [Geography].City,
  [Geography].EnglishCountryRegionName AS [Country]
FROM 
  DimCustomer Customer 
  LEFT JOIN DimGeography [Geography] ON Customer.GeographyKey = [Geography].GeographyKey 
