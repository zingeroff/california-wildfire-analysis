# california-wildfire-analysis
SQL and Looker portfolio project analyzing California wildfire data

# California Wildfire Data Analysis

This is a data analytics portfolio project using real open data on California wildfires. The project demonstrates my skills in:

- SQL (joins, subqueries, window functions)
- Data modeling and cleaning
- Google Looker Studio dashboard creation

The goal is to uncover insights into wildfire trends, damage, and geographic patterns, similar to those handled by CAL FIRE analysts.

## Tools Used
- DB Browser for SQLite (SQL engine)
- Google Looker Studio (interactive dashboard)
- GitHub (project documentation and version control)

## Step 1: Project Setup

This GitHub repository contains all files related to the project. It includes:

- Source data in CSV format
- SQL scripts used to analyze and clean the data
- Google Looker Studio dashboard file
- Final report and insights

In this step, we created this GitHub repository and added this README file to track all work.

## Step 2: Data Source and Import

We used the official California state open data portal to obtain wildfire perimeter data from 1950 to present.

- Source: https://data.cnra.ca.gov/dataset/california-fire-perimeters-all
- File used: California_Fire_Perimeters_(all).csv

We renamed the file to `wildfires.csv` and imported it into a new SQLite database called `wildfire_analysis.db` using DB Browser for SQLite.

The imported table is called `wildfires`. This table contains information on the location, size, date, and causes of wildfires across California.

We identified 77 records with missing year values and excluded them from further analysis to ensure accurate time-based trends.

We identified year values ranging from 1878 to 2023. However, older records (before 1980) are sparse and less consistent. Therefore, we decided to limit our analysis to the period from 1980 to 2023 to ensure more accurate and actionable insights.

## Step 3: Yearly Fire Summary (1980–2023)

To better understand the recent history of wildfires, we focused our analysis on data from 1980 to 2023. The query below calculates:

- The number of wildfire events per year
- The average size of fires in acres
- The total burned area per year

```sql
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
```

We saved the result of this query as `yearly_fire_summary.csv` and placed it in the `data/` folder for use in Google Looker Studio.

## Step 4: Visualization in Looker Studio (Google Data Studio)

We used Google Looker Studio to visualize the data from `yearly_fire_summary.csv`. The first chart shows how the number of wildfires changed year by year.

### Chart 1: Annual Wildfire Count
- Type: Line chart
- Dimension: `year`
- Metric: `fire_count`
- Title: *Annual Wildfire Count (1980–2023)*
![Wildfire Count Line Chart](screenshots/Annual_Wildfire_Count.png)
This chart helps identify trends in wildfire frequency and detect periods of increase or stability.

