
-- Calculate the number of wildfires, average fire size, and total burned area
-- for each year between 1980 and 2023.
-- This helps identify annual trends in wildfire frequency and severity.


SELECT 
  YEAR_ AS year,
  COUNT(*) AS fire_count,
  ROUND(AVG(GIS_ACRES), 2) AS avg_fire_size_acres,
  ROUND(SUM(GIS_ACRES), 2) AS total_burned_acres
FROM 
  wildfires
WHERE 
  YEAR_ >= 1980
  AND YEAR_ <= 2023
  AND GIS_ACRES IS NOT NULL
GROUP BY 
  YEAR_
ORDER BY 
  YEAR_ ASC;
