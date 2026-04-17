## Introduction

“The objective of this project is to analyze student performance data using Python dictionaries. 
The goal is to calculate key metrics such as total marks, average scores, identify top performers, 
and detect students who need improvement.”

“This type of analysis is useful in educational analytics to evaluate performance and support decision-making.”

## 📂Data Understanding

“The dataset is structured as a dictionary where each student has marks in different subjects like Math, Science, and English.”
Asha → 78, 85, 67
Ravi → 35, 40, 50
John → 90, 92, 88

“This structure allows easy access and calculation for each student.”

## Task 1: Total & Average Calculation

“First, I calculated the total and average marks for each student.”
Used sum() to calculate total
Divided by number of subjects for average
Stored results in separate dictionaries

👉 Output:

Asha → Total: 230, Avg: 76.67
Ravi → Total: 125, Avg: 41.67
John → Total: 270, Avg: 90

👉 Insight:
“This helps in understanding overall student performance.”

## Task 2: Identify Top Scorer

“Next, I identified the top-performing student based on highest average score.”

👉 Logic:

Used max() function with average values

👉 Output:

John is the top scorer with an average of 90

👉 Insight:
“This helps in recognizing high-performing students.”

##Task 3: Identify Failed Students

“Finally, I identified students who failed in any subject.”

👉 Logic:

Checked if any subject mark is less than 40
Used any() function

👉 Output:

Ravi failed in at least one subject

👉 Insight:
“This helps in identifying students who need attention or support.”

## 📊Key Insights

“From this analysis, we can conclude:”

John is consistently performing at a high level
Asha has good performance but can improve further
Ravi is struggling and needs improvement

## Conclusion 

“In conclusion, this project demonstrates how Python can be used to analyze structured data efficiently. 
By calculating key metrics and identifying performance patterns, we can derive meaningful insights that 
support better decision-making in education.”
