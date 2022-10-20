-- =============================================
-- Author: Yahya Talab
-- Create date: 10/14/2022
-- Description:	Combining Insider Purchases and Sales Tables YTD for Analysis in Tableau
-- =============================================

--First Create the master table for all trades
Select x.*
INTO all_trades
FROM
(SELECT * FROM [dbo].[insiderpurchases_ytd]
UNION
SELECT * FROM [dbo].[insidersales_ytd]) x


--Create new tables with ticker info

Drop table insiderpurchases_wtick
SELECT 
	p.[multiple_trans]
      ,p.[filing_date]
      ,p.[trade_date]
      ,p.[Ticker]
      ,p.[company_name]
      ,p.[insider_name]
      ,p.[title]
      ,p.[trade_type]
      ,p.[Price]
      ,p.[Qty]
      ,p.[Owned]
      ,p.[D_Own]
      ,p.[Value]
      ,p.[delta_own]
      ,p.[trade_value]
      ,p.[price_new]
	  ,t.[Number]
      ,t.[company_name_clean]
      ,t.[sector]
      ,t.[industry]
      ,t.[country]
      ,t.[mkt_cap]
      ,t.[pe]
      ,t.[Price] as recent_price
      ,t.[Change]
      ,t.[Volume]
INTO insiderpurchases_wtick
FROM [dbo].[insiderpurchases_ytd] p 
LEFT Join [dbo].[ticker_info] t
on p.Ticker=t.Ticker


Drop table insidersales_wtick
SELECT 
	s.[multiple_trans]
      ,s.[filing_date]
      ,s.[trade_date]
      ,s.[Ticker]
      ,s.[company_name]
      ,s.[insider_name]
      ,s.[title]
      ,s.[trade_type]
      ,s.[Price]
      ,s.[Qty]
      ,s.[Owned]
      ,s.[D_Own]
      ,s.[Value]
      ,s.[delta_own]
      ,s.[trade_value]
      ,s.[price_new]
	  ,t.[Number]
      ,t.[company_name_clean]
      ,t.[sector]
      ,t.[industry]
      ,t.[country]
      ,t.[mkt_cap]
      ,t.[pe]
      ,t.[Price] as recent_price
      ,t.[Change]
      ,t.[Volume]
INTO insidersales_wtick
FROM [dbo].[insidersales_ytd] s 
LEFT Join [dbo].[ticker_info] t
on s.Ticker=t.Ticker



