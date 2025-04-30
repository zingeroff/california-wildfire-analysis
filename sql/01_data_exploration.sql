-- Explore table structure
PRAGMA table_info(wildfires);

-- Preview first 100 rows
SELECT * FROM wildfires LIMIT 100;

-- Count how many rows are missing the year
SELECT COUNT(*) AS missing_years
FROM wildfires
WHERE YEAR_ IS NULL OR TRIM(YEAR_) = '';

-- List all distinct years in the data
SELECT DISTINCT YEAR_
FROM wildfires
ORDER BY YEAR_ ASC;
