# 🎯 1. Objective 

“The goal of this analysis is to understand the relationship between average sleep hours and average work hours, and identify whether individuals maintain a healthy balance between rest and work.”

# 📥 2. Data Preparation 
“We started by importing the dataset into Power BI and performed data cleaning to ensure accuracy.”
Key Steps:
Ensured correct data types (numeric)
Checked for duplicates
Standardized column names
👉 This ensures reliable insights

# 🧮 3. Data Modeling & Measures
“Next, we created key measures using DAX to analyze the data.”
✔ Measures Created:
Average Sleep Hours
Avg Sleep Hours = AVERAGE('stress_Analysis'[Sleep Hours])
Average Work Hours
Avg Work Hours = AVERAGE('stress_Analysis''[Work Hours])
Sleep to Work Ratio
Sleep to Work Ratio = DIVIDE([Avg Sleep Hours], [Avg Work Hours])
Difference
Sleep Work Difference = [Avg Sleep Hours] - [Avg Work Hours]

# 📊 4. Dashboard & Visualizations
“We designed an interactive dashboard to compare and analyze sleep and work patterns.”

✔ Visuals Used:
🔹 KPI Cards
Avg Sleep Hours
Avg Work Hours
🔹 Bar Chart
Comparison of Sleep vs Work Hours
🔹 Line Chart (Trend Analysis)
Sleep & Work Hours over time
🔹 Slicers (Filters)
Stress Level / department

# 🔍 5. Key Insights (This is very important for client)
You can explain like this 👇
✅ Insight 1: Work Dominates Sleep
“We observed that average work hours are higher than sleep hours for most individuals, indicating potential imbalance.”

✅ Insight 2: Low Sleep-to-Work Ratio
“The ratio of sleep to work is below 1 for a majority, which suggests insufficient rest compared to workload.”

✅ Insight 3: Consistency Patterns
“Trend analysis shows that this imbalance is consistent over time, rather than occasional.”

✅ Insight 4: Segment Differences
(If slicers used)
“Certain groups (e.g., stress level, department) show more imbalance, which can help target interventions.”

# 📝 6. Final Conclusion
“In conclusion, the analysis clearly highlights a gap between sleep and work hours. Most individuals are not getting adequate rest compared to their workload. By addressing this imbalance through better policies and awareness, organizations can improve both employee well-being and overall productivity.”
