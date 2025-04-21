CREATE VIEW vwCalendar AS 
SELECT 
  DateKey, 
  CONVERT(
    VARCHAR(10), 
    FullDateAlternateKey, 
    103
  ) as [Date], 
  EnglishDayNameOfWeek AS [DayOfWeek], 
  DayNumberOfWeek AS [WeekNo], 
  DayNumberOfMonth, 
  MonthNumberOfYear AS [MonthNo], 
  LEFT(EnglishMonthName, 3) AS [Month], 
  CalendarQuarter AS [Quarter], 
  CalendarSemester AS [Semester], 
  CalendarYear AS [Year] 
FROM 
  DimDate 
WHERE 
  CalendarYear >= 2019