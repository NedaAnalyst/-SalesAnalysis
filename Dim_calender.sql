SELECT  [DateKey]
      ,[FullDateAlternateKey] as Date,
      [EnglishDayNameOfWeek] as Day,

      [EnglishMonthName] as Month,
	  left([EnglishMonthName],3) as MonthShort,
      [MonthNumberOfYear] as MonthNo,
      [CalendarQuarter] as Quarter,
      [CalendarYear] as Year
     
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  WHERE CalendarYear >= 2012
  
