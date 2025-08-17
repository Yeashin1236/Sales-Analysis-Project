--- Cleansed DimProducts Table --

SELECT
  P.ProductKey, 
  P.ProductAlternateKey AS Product_item_code,
  --    ,[ProductSubcategoryKey]
  --    ,[WeightUnitMeasureCode]
  --    ,[SizeUnitMeasureCode]
  P.EnglishProductName AS Product_name,
  PS.EnglishProductSubcategoryName AS Sub_category, -- Joined from Subcategory Table
  PC.EnglishProductCategoryName AS Product_category,  
  --    ,[SpanishProductName]1
  --    ,[FrenchProductName]
  --    ,[StandardCost]
  --    ,[FinishedGoodsFlag]
  P.Color AS Product_color,
  --    ,[SafetyStockLevel]
  --    ,[ReorderPoint]
  --    ,[ListPrice]
  P.Size AS Product_size,
  --    ,[SizeRange]
  --    ,[Weight]
  --    ,[DaysToManufacture]
  P.ProductLine AS Product_line,
  --    ,[DealerPrice]
  --    ,[Class]
  --    ,[Style]
  P.ModelName AS Product_model_name,
  --    ,[LargePhoto]
  P.EnglishDescription AS Product_description,
  --    ,[FrenchDescription]
  --    ,[ChineseDescription]
  --    ,[ArabicDescription]
  --    ,[HebrewDescription]
  --    ,[ThaiDescription]
  --    ,[GermanDescription]
  --    ,[JapaneseDescription]
  --    ,[TurkishDescription]
  --    ,[StartDate]
  --    ,[EndDate]
  Isnull (P.Status, 'Outdated') AS Product_satus
FROM
[AdventureWorksDW2019].[dbo].[DimProduct] AS P
LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductSubcategory] AS PS ON PS.ProductSubcategoryKey = P.ProductSubcategoryKey
LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductCategory] AS PC ON PC.ProductCategoryKey =PS.ProductCategoryKey
ORDER BY
P.ProductKey  ASC
