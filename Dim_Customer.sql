--- Cleansed DimCustomer Table
SELECT
    C.CustomerKey AS Customer_key,
    ---      ,[GeographyKey]
    ---      ,[CustomerAlternateKey]
    ---      ,[Title]
    C.FirstName AS First_name,
    ---      ,[MiddleName]
    C.LastName AS Last_name,
    C.FirstName + ' ' + C.LastName AS Full_name,
    ---      ,[NameStyle]
    ---      ,[BirthDate]
    ---      ,[MaritalStatus]
    ---      ,[Suffix]
    CASE C.Gender 
        WHEN 'M' THEN 'Male' 
        WHEN 'F' THEN 'Female' 
    END AS Gender, 
    ---      ,[EmailAddress]
    ---      ,[YearlyIncome]
    ---      ,[TotalChildren]
    ---      ,[NumberChildrenAtHome]
    ---      ,[EnglishEducation]
    ---      ,[SpanishEducation]
    ---      ,[FrenchEducation]
    ---      ,[EnglishOccupation]
    ---      ,[SpanishOccupation]
    ---      ,[FrenchOccupation]
    ---      ,[HouseOwnerFlag]
    ---      ,[NumberCarsOwned]
    ---      ,[AddressLine1]
    ---      ,[AddressLine2]
    ---      ,[Phone]
    C.DateFirstPurchase,
    ---      ,[CommuteDistance]
    G.City AS Customer_city  -- Joined Customer City from DimGeograpy table
FROM [AdventureWorksDW2019].[dbo].[DimCustomer] AS C
LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography] AS G 
    ON C.GeographyKey = G.GeographyKey
ORDER BY Customer_key ASC;  -- Ordered listed by Customer Key  clean those codes
