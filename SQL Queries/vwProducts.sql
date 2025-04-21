CREATE VIEW vwProducts AS 
SELECT 
  P.ProductKey, 
  P.EnglishProductName AS [ProductName], 
  P.ProductAlternateKey AS [ProductCode],
  C.EnglishProductCategoryName AS [Category], -- Joined from Catergory table
  SC.EnglishProductSubcategoryName AS [Subcategory], -- Joined from SubCatergory table
  P.Color AS [ProductColor],
  P.Size AS [ProductSize],
  P.ProductLine AS [ProductLine],
  P.ModelName AS [ModelName],
  P.EnglishDescription AS [ProductDescription],
  ISNULL(P.Status,'Outdated') AS [Product Status]
FROM 
  DimProduct AS P 
  LEFT JOIN dbo.DimProductSubcategory AS SC ON P.ProductSubcategoryKey = SC.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory AS C ON SC.ProductCategoryKey = C.ProductCategoryKey