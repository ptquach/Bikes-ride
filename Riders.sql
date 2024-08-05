WITH cte as
(SELECT *
FROM [dbo].[bike_share_yr_0]
UNION ALL
SELECT *
FROM [dbo].[bike_share_yr_1])

SELECT dteday, season, a.yr, weekday, hr, rider_type, riders, price, [COGS], riders*price as revenue, riders*price- [COGS] as profit
FROM cte as a
LEFT join [dbo].[cost_table] as b
on a.yr = b.yr
