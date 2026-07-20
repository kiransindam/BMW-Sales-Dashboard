# BMW Sales Data - MySQL Analytics & Queries 🚗
Self-Made Project | Project 14
A comprehensive MySQL query repository analyzing BMW car sales across 6 models and 4 regions. This project features 75+ SQL queries ranging from beginner fundamentals to advanced analytical techniques (Window Functions, CTEs, and Pivots) — built to extract deep business insights from a custom 200-record dataset.

📌 **Project Overview**
This project demonstrates advanced data manipulation and analytical skills using MySQL. It transforms raw sales data into actionable business intelligence through structured querying. The repository is organized by difficulty level, serving as both a practical business analysis tool and a complete SQL interview preparation guide.

**Key business questions answered via SQL:**
* Which BMW model generates the highest total revenue and profit margin?
* How do the 4 regions compare in terms of sales volume and profitability?
* What is the distribution of profit tiers and unit ranges across the dataset?
* How can we calculate running totals, moving averages, and market share using SQL?
* What would the profit look like if we applied a 10% price increase to specific models?

️ **Tools Used**
| Tool | Purpose |
| --- | --- |
| **MySQL** | Relational database management, complex querying, and data aggregation |
| **MySQL Workbench / DBeaver** | Query execution, schema design, and performance optimization |
| **Excel / CSV** | Data sourcing and initial data structuring |

📊 **Query Categories — 4 Levels**

**Level 1 — Beginner (Fundamentals)**
* **SELECT & Filtering:** Basic data extraction, `WHERE` clauses, `LIMIT`.
* **Sorting:** `ORDER BY` single and multiple columns.
* **Basic Aggregations:** `COUNT`, `SUM`, `AVG`, `MAX`, `MIN`.
* *Goal: Master data retrieval and basic summarization.*

**Level 2 — Intermediate (Data Grouping & Logic)**
* **Grouping:** `GROUP BY` with `HAVING` clause for filtered aggregations.
* **Conditional Logic:** Multiple conditions (`AND`, `OR`, `BETWEEN`, `IN`).
* **Pattern Matching:** `DISTINCT` and `LIKE` operators.
* **Calculations:** Revenue calculations, profit margins, and aliases.
* *Goal: Perform dimensional analysis and basic business calculations.*

**Level 3 — Advanced (Analytical SQL)**
* **Subqueries:** Nested queries for comparative analysis (e.g., above-average profits).
* **CASE Statements:** Data binning, performance rating, and dynamic bonus calculations.
* **Window Functions:** `RANK()`, `ROW_NUMBER()`, `LAG()`, `LEAD()`, and moving averages.
* **CTEs (Common Table Expressions):** Modular query building for market share and regional targets.
* *Goal: Execute complex analytical tasks without external tools.*

**Level 4 — Challenge (Expert & Business Scenarios)**
* **Pivot Tables:** Dynamic row-to-column transformation using `CASE` and `SUM`.
* **Complex Aggregations:** Variance, standard deviation, and cumulative totals.
* **What-If Analysis:** Scenario modeling (e.g., 10% price hike impact on total profit).
* *Goal: Solve real-world, multi-step business problems purely in SQL.*

🔑 **Key SQL Concepts & Business Insights**

📊 **Overall KPIs (Extracted via SQL)**
| Metric | Value |
| --- | --- |
| Total Revenue | $117,285,097 |
| Total Cost | $84,406,943 |
| Total Profit | $32,878,154 |
| Total Units Sold | 1,974 |
| Avg Price per Car | $59,361 |
| Profit Margin | 28.03% |
| Total Records | 200 |

🚗 **Model Performance Insights**
| Model | Units | Revenue | Profit Margin | Insight |
| --- | --- | --- | --- | --- |
| **BMW X3** | 421 | $25.27M | 28.34% | Leads in Revenue & Volume |
| **BMW X1** | 385 | $22.51M | **30.02%** | **Highest Profit Margin** |
| **BMW 7 Series** | 364 | $22.52M | 28.28% | Commands highest Avg Price |
| **BMW 5 Series** | 236 | $13.91M | 24.93% | Lowest margin — needs review |

️ **Regional Performance Insights**
| Region | Units | Revenue | Profit | Insight |
| --- | --- | --- | --- | --- |
| **North** | 560 | $33.76M | $9.00M | Top performing region |
| **West** | 482 | $30.49M | $8.33M | Strong secondary market |
| **South** | 474 | $27.57M | $8.07M | Steady performance |
| **East** | 458 | $25.46M | $7.48M | Expansion opportunity |

🧮 **Complex Query Highlights**
| Query Type | Logic / Formula Used |
| --- | --- |
| **Profit Margin %** | `SUM(Profit) / SUM(Price * Units_Sold) * 100` |
| **Market Share (CTE)** | `(Model_Units / Grand_Total_Units) * 100` |
| **Moving Average** | `AVG(Profit) OVER(ORDER BY Model ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING)` |
| **Pivot Table** | `SUM(CASE WHEN Region = 'North' THEN Units_Sold ELSE 0 END) AS North` |
| **What-If Scenario** | `SUM(CASE WHEN Model = 'BMW 3 Series' THEN Units_Sold * (Price * 1.10) - Cost ELSE Profit END)` |

📁 **Project Structure**
```text
BMW-Sales-MySQL-Analytics/
 │
 ├── README.md                        ← You are here
 │
 ├── data/
 │   ├── bmw_sales.csv                ← Raw dataset — 200 records
 │   └── schema.sql                   ← Table creation script
 │
 ├── queries/
 │   ├── 01_beginner.sql              ← SELECT, WHERE, ORDER BY, LIMIT
 │   ├── 02_intermediate.sql          ← GROUP BY, HAVING, CASE, Calculations
 │   ├── 03_advanced.sql              ← Subqueries, Window Functions, CTEs
 │   └── 04_challenge.sql             ← Pivots, Complex Aggregations, What-If
 │
 └── screenshots/
     ├── mysql_output_1.png           ← Basic Aggregations Output
     ├── mysql_output_2.png           ← Window Functions Output
     ── mysql_output_3.png           ← Challenge Pivot Table Output