# california-wildfire-analysis
SQL and Power BI portfolio project analyzing California wildfire data

# California Wildfire Data Analysis

This is a data analytics portfolio project using real open data on California wildfires. The project demonstrates my skills in:

- SQL (joins, subqueries, window functions)
- Data modeling and cleaning
- Power BI dashboard creation

The goal is to uncover insights into wildfire trends, damage, and geographic patterns, similar to those handled by CAL FIRE analysts.

## Tools Used
- DB Browser for SQLite (SQL engine)
- Power BI (interactive dashboard)
- GitHub (project documentation and version control)

## Step 1: Project Setup

This GitHub repository contains all files related to the project. It includes:

- Source data in CSV format
- SQL scripts used to analyze and clean the data
- Power BI dashboard file (.pbix)
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


