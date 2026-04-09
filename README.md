# Data Analyst Assessment - PlatinumRx

## 📌 Project Overview
This repository contains my solutions for the PlatinumRx Data Analyst technical assessment. The project demonstrates proficiency across three core domains: **SQL Database Management**, **Spreadsheet Analytics**, and **Python Programming**. 

As a Computer Science student, I have approached these tasks by focusing on data integrity, query optimization, and clean, modular code.

---

## 🛠️ Technical Stack
* **Database:** MySQL / PostgreSQL (Relational Data Modeling & Complex Joins)
* **Analytics:** Microsoft Excel (VLOOKUP, Time-based Logic, Pivot Tables)
* **Logic:** Python 3.x (String Manipulation & Data Type Conversion)
* **Version Control:** Git & GitHub

---

## 📂 Project Structure
The repository is organized into three main phases:

### 1. SQL Proficiency
Located in `/SQL`, this section includes:
* **Hotel Management:** Queries to track user booking history, monthly billing aggregates, and item popularity using Window Functions (`RANK`, `ROW_NUMBER`).
* **Clinic Management:** Financial reporting logic to calculate revenue by channel, top customer value, and monthly profit/loss status.

### 2. Spreadsheet Proficiency
Located in `/Spreadsheets`, the `Ticket_Analysis.xlsx` file includes:
* **Data Integration:** Used `VLOOKUP` to link feedback records with ticket creation timestamps.
* **Efficiency Metrics:** Developed helper columns to identify tickets closed within the same day and same hour of creation.
* **Reporting:** A dynamic Pivot Table summarizing outlet performance.

### 3. Python Proficiency
Located in `/Python`, these scripts solve specific logic problems:
* **Time Converter:** A script that converts raw minutes into a human-readable "X hrs Y minutes" format.
* **String Cleaner:** A loop-based algorithm that removes duplicate characters while preserving the original string order.

---

## 🚀 How to Run
1.  **SQL:** Import the `Schema_Setup` files into your SQL environment, then execute the `Queries` files to see the results.
2.  **Excel:** Open the `.xlsx` file and navigate to `Sheet3` to view the Pivot Table analysis.
3.  **Python:** Run the scripts via terminal using `python 01_Time_Converter.py` or `python 02_Remove_Duplicates.py`.

---

## 💡 Key Insights & Assumptions
* **Profitability Status:** In the Clinic SQL task, I used a `LEFT JOIN` on the expenses table to ensure that clinics with revenue but zero expenses are still included in the report.
* **Scalability:** Python scripts were written with a focus on O(n) time complexity for the duplicate removal task to ensure efficiency with larger strings.

---

**Author:** Prem Kumar  
**Education:** B.Tech in Computer Science Engineering (Class of 2026)  
**Location:** Bangalore, India