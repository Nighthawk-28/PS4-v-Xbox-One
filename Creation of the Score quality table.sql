CREATE OR REPLACE TABLE `Video_games_dataset.QualityComparisonPX`
AS
SELECT
  Year,
  Platform,
  ROUND(AVG(Critic_Score), 2) AS Avg_Critic_Score,
  MIN(Critic_Score) AS Min_Critic_Score,
  MAX(Critic_Score) AS Max_Critic_Score,
  ROUND(AVG(User_Score), 2) AS Avg_User_Score,
  MIN(User_Score) AS Min_User_Score,
  MAX(User_Score) AS Max_User_Score
FROM `entertainment-data-491119.Video_games_dataset.p12PXset`
WHERE Critic_Score IS NOT NULL AND User_Score IS NOT NULL
GROUP BY Year, Platform
ORDER BY Year DESC, Platform;
