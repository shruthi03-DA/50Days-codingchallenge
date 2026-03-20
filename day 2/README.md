# Objective
Analyze the given Student Screen time dataset using Microsoft Excel.

# Dataset
The dataset contains Student Screen time data of different students age groups with

# Columns included:

Screen time
Study hours
Test scores
Extra curiccular hours
Tasks Performed
Data Cleaning
Checked for missing values and replaced with the average
Checked for duplicates and removed duplicates.
Columns added
Created a new column: Screen time Category
Used formula= IF(D2<2,"Low",IF(D2<=4,"Moderate",IF(D2>4,"High")))
Created a new column: Marks Category
Used formula = IFS(E2>=90,"A+",E2>=75,"A",E2>=60,"B+",E2>=45,"B",E2>=35,"C",E2<35,"Fail")
Pivot Table Analysis

# Created Pivot Tables to analyze:

Screen time category by Test scores
Age by Test scores
Marks Category by Extra curricular time and Study hours

# Visualization and Dashboard
Created a chart to visualize Average test scores by Screen time
Created Scattered plot to visualize Test scores by Screentime
# Key Insights
Age wise 14 years has the highest test scores.
Fail Students has the most extra curricular time.
Screen time low has the lowest extra curricular time.
