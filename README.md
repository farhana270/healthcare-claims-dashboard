#  Healthcare Claims Analysis Dashboard

---

## Project Overview

Healthcare organizations generate massive amounts of claims data, but extracting actionable insights from this data is often challenging.

This project builds an **end-to-end healthcare analytics solution** using **PostgreSQL and Power BI** to analyze patient claims, identify cost drivers, and evaluate hospital and insurance performance.

---

## Business Problem

Healthcare stakeholders need to answer critical questions such as:

* Which medical conditions drive the highest treatment costs?
* Which hospitals and insurance providers generate the most revenue?
* What are the trends in patient admissions over time?
* How long do patients typically stay in hospitals?

This project addresses these questions through structured data modeling and interactive visualization.

---

##  Tools & Technologies

* **SQL (PostgreSQL)** → Data cleaning, transformation, and analysis
* **Power BI** → Dashboard development and visualization
* **DAX** → KPI calculations and metrics
* **CSV Dataset** → Healthcare claims data

---

##  Data Architecture

The project follows a **star schema design**:

```text
Raw Data → PostgreSQL → Data Modeling → Power BI Dashboard
```

### Tables:

* **Patients** → Demographic details (age, gender, blood type)
* **Hospitals** → Hospital and doctor information
* **Claims (Fact Table)** → Admissions, billing, LOS, insurance

---

## SQL Data Processing

Key transformations performed:

* Created normalized tables (**patients, hospitals, claims**)
* Engineered features:

  * **Length of Stay (LOS)**
  * **Readmission Flag (simulated ~10% for analysis)**
* Aggregated metrics:

  * Average cost
  * Total revenue
  * Hospital-level performance

---

## Dashboard Features

###  KPI Metrics

* Total Revenue
* Average Cost per Patient
* Readmission Rate
* Average Length of Stay

###  Visual Analysis

* Cost by Medical Condition
* Monthly Admission Trends
* Top Hospitals by Revenue
* Top Insurance Providers by Revenue
* Hospital Performance Table

###  Interactivity

* Filters:

  * Gender
  * Disease / Medical Condition
  * Insurance Provider

---

##  Key Insights

* Arthritis, Obesity, and Diabetes have the highest treatment costs (~25–26K)
* Top hospitals contribute significantly to total revenue (~40M–50M)
* Insurance providers like Cigna and Blue Cross drive major revenue
* Patient admissions peak during mid-year (June–August)
* Average length of stay is ~15.5 days, indicating moderate hospitalization duration

---

##  Dashboard Preview
<img width="968" height="553" alt="image" src="https://github.com/user-attachments/assets/51e67fdc-2e37-42a8-b9f4-053c26a2a749" />


---

##  Project Structure

```
healthcare-claims-dashboard/
│
├── data/
│   └── healthcare_dataset.csv
│
├── sql/
│   ├── schema.sql
│   ├── transformations.sql
│   ├── analysis.sql
│
├── powerbi/
│   └── dashboard.pbix
│
├── images/
│   └── dashboard.png
│
└── README.md
```

---

##  How to Run This Project

1. Load dataset into PostgreSQL
2. Execute SQL scripts for schema and transformations
3. Open Power BI `.pbix` file
4. Refresh data connection
5. Explore dashboard with filters

---

## Business Impact

This dashboard enables healthcare stakeholders to:

* Identify high-cost conditions and optimize treatment strategies
* Monitor hospital and insurance performance
* Understand patient admission trends
* Support data-driven decision making

---

##  Key Learning Outcomes

* Built a complete **SQL + BI pipeline**
* Designed a **star schema data model**
* Developed **interactive dashboards with DAX measures**
* Applied **domain-specific healthcare analytics concepts**

---

## Future Improvements

* Integrate real-world datasets (CMS / MIMIC)
* Enhance readmission modeling with predictive analytics
* Add drill-through and advanced filtering features

---

##  Author

**Farhana**
Aspiring Data Analyst | SQL | Power BI | Healthcare Analytics

---
