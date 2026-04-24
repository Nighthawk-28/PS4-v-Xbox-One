UPDATE `entertainment-data-491119.Video_games_dataset.p12PXset` AS t1
SET t1.`Total Sales` = t2.Global_Sales
FROM `entertainment-data-491119.Video_games_dataset.vgsalesrs` AS t2
WHERE t1.Name = t2.Name AND t1.Platform = 'XOne' AND t2.Platform = 'XOne'
