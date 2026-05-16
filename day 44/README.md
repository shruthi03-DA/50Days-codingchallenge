## Day 44 – Healthcare Patient Readmission Analysis
# 📌 Project Overview

This project focuses on analyzing healthcare patient records to identify factors causing frequent hospital readmissions.

Using healthcare analytics, the project explores:

Readmission trends
Disease impact
Age group analysis
Recovery performance
Estimated treatment cost analysis

The goal is to help hospital management improve patient care and reduce readmission rates.

# 📂 Dataset Used

Dataset:
Diabetes Readmission Dataset

# 🛠 Tools & Technologies
Google Sheets / Excel
SQL
Python
Pandas
Matplotlib
Seaborn
Power BI

# 📊 Dataset Columns Used
Original Dataset Column	Project Usage
age	Patient age group analysis
readmitted	Readmission analysis
diag_1	Disease category
time_in_hospital	Recovery duration
num_lab_procedures	Treatment activity
num_medications	Medication analysis
# 🔧 Feature Engineering

Since the dataset did not contain direct:

Disease names
Treatment cost

additional derived columns were created.

Disease Category Creation

Diagnosis codes from diag_1 were converted into disease categories.

# Example
Diagnosis Code	Disease
250	Diabetes
401	Hypertension
414	Heart Disease
Estimated Treatment Cost Formula
=(time_in_hospital*500)+(num_lab_procedures*50)+(num_medications*100)

This estimated:

Hospital stay cost
Lab test expenses
Medication expenses

# 📈 Tasks Performed
1. Data Cleaning
Handled missing values
Removed duplicates
Standardized disease categories

2. Readmission Analysis

Analyzed:

Age vs readmission
Disease vs readmission
Readmission frequency
3. Recovery Analysis

Studied:

Recovery duration by disease
Recovery performance trends
4. Cost Analysis

Created:

Estimated treatment cost
Cost vs recovery analysis

# 📊 Visualizations Created
Power BI / Excel Charts
Readmission by Disease
Patient Age Distribution
Recovery Trend Analysis
Cost Analysis Dashboard
Age vs Readmission Chart
Estimated Cost vs Recovery Scatter Plot

# 🔍 Key Insights
High Readmission Diseases

Diseases like:

Diabetes
Heart Disease
Hypertension

showed higher readmission rates.

Age Impact

Older patients showed increased readmission probability.

Cost vs Recovery

Higher estimated treatment cost did not always reduce recovery duration.

Recovery Performance

Some patient groups recovered faster despite lower treatment cost.

# 💡 Business Recommendations

Hospitals can reduce readmission by:

Improving follow-up care
Monitoring chronic disease patients
Supporting elderly patients
Optimizing treatment planning

# 📁 Project Structure
Day44-Healthcare-Patient-Analytics/
│
├── dataset/
├── excel-analysis/
├── sql-queries/
├── powerbi-dashboard/
├── screenshots/
└── README.md

# 🚀 Learning Outcomes
Healthcare analytics
Pivot tables
Feature engineering
Dashboard storytelling
Data visualization
Readmission analysis
# 📌 Conclusion

This project demonstrates how healthcare data analytics can help hospitals
identify high-risk patients, optimize treatment strategies, and improve patient recovery outcomes.
