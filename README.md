# 📊 Internet Sales Analysis – AdventureWorks (SQL + Power BI)

## 🗃️ Database  
[AdventureWorks sample databases – SQL Server | Microsoft Learn](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms)

This project uses the **AdventureWorksDW2022** database (data updated). It is stored locally and version-controlled via a remote GitHub repository using **VS Code**, serving as part of a professional **BI Portfolio**.

---

## 🧩 Business Request

### Email from Steven – Sales Manager:

> “Hi all,  
> I hope you are doing well. We need to improve our internet sales reports and want to move from static reports to visual dashboards.  
> Essentially, we want to focus it on **how much we have sold**, **of what products**, **to which clients**, and **how it has been over time**.  
> Seeing as each sales person works on **different products and customers**, it would be beneficial to be able to filter them also.  
> We measure our numbers against **budget**, so I added that in a spreadsheet so we can compare our values against performance.  
> The **budget is for 2025**, and we usually look **2 years back in time** when we do analysis of sales.  
> Let me know if you need anything else!  
> // Steven”

---

## 📌 Business Demand Overview & User Stories

### 👤 Business User Stories (Stakeholder-facing)

- **Reporter:** Steven – Sales Manager  
- **Business Goal:** Enhanced internet sales reporting with dashboards  
- **Systems Involved:** Power BI, CRM  
- **Note:** Budget was delivered in Excel for 2025

| No | As a (role)          | I want (request)                                | So that I (user value)                                        | Acceptance Criteria                                     |
|----|----------------------|--------------------------------------------------|----------------------------------------------------------------|----------------------------------------------------------|
| 1  | Sales Manager        | Dashboard overview of internet sales            | Understand top-performing customers and products               | Power BI dashboard updating daily                       |
| 2  | Sales Representative | Internet sales per customer                     | Follow up on key buyers and identify upselling opportunities    | Filterable customer insights in Power BI                |
| 3  | Sales Representative | Internet sales per product                      | Track best-selling products                                    | Product-level filtering in dashboard                    |
| 4  | Sales Manager        | Compare sales over time against budget          | Monitor performance and variances                              | KPIs and budget comparison visualized in Power BI       |

---

### 👨‍💻 Data Analyst Follow-Up Actions (Internal Project Scope)

| No | As a (role)       | I want (request)                              | So that I (user value)                                       | Acceptance Criteria                                             |
|----|-------------------|-----------------------------------------------|---------------------------------------------------------------|----------------------------------------------------------------|
| 1  | Data Analyst      | Track internet sales                          | Monitor online sales performance                              | Sales totals and filters by category and time                 |
| 2  | Data Analyst      | Measure product sales                         | Identify best/worst performers                                | Sales quantity visual by product                              |
| 3  | Data Analyst      | Identify customer-product purchases           | Analyze purchasing behavior                                   | Matrix of customers vs. products                              |
| 4  | Data Analyst      | Visualize sales over time                     | Detect trends and seasonality                                 | Line/area chart of time-based sales                           |
| 5  | Data Analyst      | Filter by salesperson                         | Compare rep performance                                       | Slicers or visual filters for sales team                      |
| 6  | Data Analyst      | Filter by product                             | Focus on specific product lines                               | Product/category dropdown                                     |
| 7  | Data Analyst      | Filter by customer                            | Drill down on individual clients                              | Customer slicers and filters                                  |
| 8  | Data Analyst      | Compare sales against 2025 budget             | Assess performance vs. expectations                           | Budget vs. actual comparison visuals                          |
| 9  | Data Analyst      | Analyze last 2 years of sales (2023–2024)     | Track recent performance trends                               | Time-based visualizations with at least 24 months of data     |

---

## ⚙️ Tables and Transformations Overview

All SQL transformations were documented in the `SQL Queries` folder.  
Views were created in SQL Server to prepare clean, reusable data sources for Power BI.

### ✅ Key transformation steps:

- `SELECT` to extract relevant columns  
- `LEFT JOIN` to integrate related dimensions  
- `REPLACE`, `CONCAT`, and `CONVERT` for field formatting  
- `WHERE` clause to define the relevant time window (2023–2024)  
- `CREATE VIEW` used instead of CSV exports, allowing scalable, automated integration and **query folding** in Power BI  
- 💡 SQL was formatted using [SQL Formatter & Beautifier Online](https://codebeautify.org/sqlformatter)

---

## 🧱 Dimension Tables (Dim)

| Table          | Description |
|----------------|-------------|
| **DimProduct** | Unified view combining `DimProduct`, `DimProductSubcategory`, and `DimProductCategory` |
| **DimDate**    | Used to create `vwCalendar`, including fields like quarter, semester, and abbreviated month |
| **DimCustomer** + **DimGeography** | Joined to enrich customer records with city and country |
| **DimPromotion** & **DimCurrency** | Reviewed but excluded – no promotions applied and values are already in USD |

---

## 📦 Fact Tables (Fact)

| Table            | Description |
|------------------|-------------|
| **FactInternetSales** | Used to create the `vwInternetSales` view. Filters data from **January 2023 to October 2024**, aligning with the most recent sales data and the 2025 budget for performance comparison |

---

## 🚧 Next Steps

This project is **ongoing**.  
The next phase will include full integration with **Power BI**, featuring interactive dashboards, KPIs, dynamic filtering, and visual storytelling aligned with business needs.

Stay tuned!
