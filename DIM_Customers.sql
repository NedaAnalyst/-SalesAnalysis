/****** Script for SelectTopNRows command from SSMS  ******/
SELECT c.customerkey as CustomerKey,
      c.firstname as FirstName,
      c.lastname as LastName,
	  c.firstname + ' ' + c.lastname as FullName,
	  case c.gender when 'M' then 'Male' when 'F' then 'Female' end as gender,

     


      c.datefirstpurchase as [DateFirstPurchase],
	  g.city AS [Customer City]
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] as c
  LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC -- Ordered List by CustomerKey