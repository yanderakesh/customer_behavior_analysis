# customer_behavior_analysis
Data analytics project showcasing customer behavior analysis using Python , SQL and PowerBi

This project demonstrates an end-to-end data analytics workflow, including data loading, exploration, cleaning, querying, visualization, and reporting. The goal is to extract meaningful insights from raw data and present them through an interactive dashboard and structured reports.

---

## Dataset

* Source: *(Add dataset source here, e.g., Kaggle, internal database, etc.)*
* Format: CSV / Excel / Database
* Size: *(e.g., 10,000 rows, 15 columns)*
* Description: The dataset contains information related to *(briefly describe what the data represents, e.g., sales, customers, transactions, etc.)*.

---

## Tools & Technologies

* **Python** (Pandas, NumPy, Matplotlib/Seaborn) – Data processing and EDA
* **SQL** (PostgreSQL / MySQL / SQL Server) – Data querying and transformation
* **Power BI** – Dashboard creation and visualization
* **Gamma** – Presentation (PPT) generation
* **Jupyter Notebook / VS Code** – Development environment

---

## Project Steps

### 1. Data Loading

* Imported dataset using Python (Pandas)
* Handled file formats and initial structure inspection

### 2. Exploratory Data Analysis (EDA)

* Checked data types, null values, and distributions
* Generated summary statistics
* Visualized trends, patterns, and outliers

### 3. Data Cleaning

* Removed duplicates and handled missing values
* Standardized column formats
* Created new features where necessary

### 4. SQL Analysis

* Loaded cleaned data into a relational database
* Wrote SQL queries for:

  * Aggregations (SUM, AVG, COUNT)
  * Joins across tables
  * Filtering and grouping
* Extracted insights for reporting

### 5. Dashboard Development

* Built an interactive Power BI dashboard
* Included:

  * Key performance indicators (KPIs)
  * Trend charts and comparisons
  * Filters and slicers for user interaction

### 6. Reporting & Presentation

* Created a structured report summarizing findings
* Designed a presentation (PPT) using Gamma
* Highlighted key insights, trends, and recommendations

---

## Dashboard

The Power BI dashboard provides:

* Overview of key metrics
* Interactive filters for deeper analysis
* Visual insights into trends and patterns

---

## Results & Insights

* Identified key trends and patterns in the dataset
* Highlighted performance metrics and anomalies
* Provided actionable insights for decision-making


---

## How to Run

### Prerequisites

* Python (>=3.x)
* Required libraries:

  ```
  pandas
  numpy
  matplotlib
  seaborn
  ```
* SQL database (PostgreSQL / MySQL / SQL Server)
* Power BI Desktop

### Steps

1. Clone the repository:

   ```
   git clone <your-repo-link>
   ```
2. Navigate to the project folder:

   ```
   cd <project-folder>
   ```
3. Install dependencies:

   ```
   pip install -r requirements.txt
   ```
4. Run the Jupyter Notebook or Python scripts for EDA and cleaning
5. Load cleaned data into your SQL database
6. Execute SQL queries for analysis
7. Open the Power BI file (`.pbix`) to explore the dashboard
8. View the presentation/report for final insights

---

## Project Structure

```
├── data/                # Raw and cleaned datasets
├── notebooks/          # Jupyter notebooks for EDA
├── sql/                # SQL scripts and queries
├── dashboard/          # Power BI files
├── reports/            # Final report and presentation
├── requirements.txt    # Python dependencies
└── README.md           # Project documentation

