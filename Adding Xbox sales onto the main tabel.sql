SELECT 
    t1.Name,
    t1.Platform AS p12set_Platform,
    t2.Platform AS vgsales_Platform,
    t1.Publisher,
    t1.Year,
    t2.Global_Sales -- Pulling Global Sales as they match Total Sales
FROM 
    `entertainment-data-491119.Video_games_dataset.p12PXset` AS t1
INNER JOIN 
    `entertainment-data-491119.Video_games_dataset.vgsalesrs` AS t2
ON 
    t1.Name = t2.Name
WHERE 
    t2.Platform = 'XOne'
