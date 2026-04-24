CREATE OR REPLACE TABLE `Video_games_dataset.PXSales_Performance` AS
SELECT
 Year,
 Platform,
 SUM(`Total Sales`) AS Yearly_Total_Sales,
 AVG(`Total Sales`) AS Avg_Sales_per_game,
 MIN(`Total Sales`) AS Min_Sales_per_game,
 MAX(`Total Sales`) AS Max_Sales_per_game
FROM `entertainment-data-491119.Video_games_dataset.p12PXset`
GROUP BY Year,Platform
ORDER BY Year DESC, Platform;