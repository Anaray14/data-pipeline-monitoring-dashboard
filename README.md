# 📊 Data Pipeline Monitoring Dashboard (L1/L2 Support)

## 📌 Project Overview
This project demonstrates an end-to-end data pipeline monitoring solution designed for L1/L2 support teams. It focuses on identifying and tracking data quality issues such as duplicates, failures, mismatches, and missing records between raw and processed datasets.

The dashboard is built using Power BI, with SQL-based data validation and transformation.

## 🎯 Objectives
- Monitor data pipeline health in real time  
- Identify duplicate and failed records  
- Compare raw vs processed data  
- Enable faster issue detection for support teams  
- Provide clear KPIs for decision-making
  Data Pipeline Architecture Diagram

## 📌 Data Pipeline Architecture
              ┌────────────────────────────┐
              │     Source System          │
              │   (CSV Files / API Feed)  │
              └────────────┬──────────────┘
                           │
                           ▼
              ┌────────────────────────────┐
              │        RAW TABLE           │
              │  (Unprocessed / Source)    │
              └────────────┬──────────────┘
                           │
                           │   ETL / Batch Job (Job B)
                           ▼
              ┌────────────────────────────┐
              │     PROCESSED TABLE        │
              │ (Cleaned / Transformed)    │
              └────────────┬──────────────┘
                           │
                           ▼
              ┌────────────────────────────┐
              │   Reports / Dashboard      │
              │ (Business Consumption)     │
              └────────────────────────────┘

## 🛠️ Tools & Technologies
- Power BI – Dashboard & visualization  
- SQL – Data cleaning & validation  
- Excel/CSV – Data source  
- Data Modeling – Relationships & measures  

## 📂 Project Structure
Data-Pipeline-Monitoring-Dashboard/
│
├── SQL/
│   ├── SQL query banking Job scenario.sql
│   ├── SQLQuery-difference.sql
│
├── screenshots/
│   ├── PowerBi Dashboard.png
│   ├── Reconciliation check.png
│   ├── Duplicate and Missing data que....png
│   ├── dashboard.png
│
├── docs/
│   ├── Final_Support_Flow_Document.docx
│   ├── Support_Flow_With_Logs.docx
├── README.md

## 🔍 Key Features
- KPI Cards: Total Records, Success Count, Failure Count, Duplicate Count  
- Raw vs Processed Comparison  
- Data Validation Checks  
- Interactive Dashboard  

## 📄 Support Flow Documentation

This project includes a detailed L1/L2 support workflow document covering:

- Reconciliation failure handling  
- Job failure troubleshooting  
- Missing data detection and resolution  
- Root cause analysis and fixes  

📌 File: docs/Final_Support_Flow_Document.docx

## 🚀 How to Use
1. Review SQL files for data validation and transformation logic  
2. Load dataset into Power BI  
3. Open .pbix file  
4. Explore dashboard visuals  
rthi Narayan  
IT Intern | Data Enthusiast
