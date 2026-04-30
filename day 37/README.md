## Title: Automated Student Grade Calculator using Python Functions 
## Objective:
To build a simple Python program that calculates a student’s total marks, average, and grade by taking input for 3 subjects. 
The program demonstrates function-based programming, input/output, and conditional logic.

## Introduction / Problem Statement
In schools and colleges, teachers manually calculate totals and grades for students. 
This is time-consuming and error-prone when done for many students.  
So we thought: “What if we automate this with a small Python program?”  
Our goal → Take marks of 3 subjects, compute total, average, and assign a grade automatically.

## 2. Planning the Solution
We broke the problem into 4 small tasks.
Each task = 1 function. This makes code clean and reusable.

Task Function Name What it does 
Get inputget_marks() Asks user for 3 subject marks, returns a list
Add markscalculate_total() Takes the list, returns total
Find averagecalculate_average() Takes total, returns average
Assign gradeget_grade() Takes average, returns A/B/C/D

## 3. Logic Behind Grade Calculation
We used standard grading rules:
 A if average ≥ 90 → Excellent
 B if average ≥ 75 → Good
 C if average ≥ 50 → Pass
 D if average < 50 → Needs improvement
This is handled using if-elif-else so only one grade is assigned.

## 4. Program Execution Flow
Step-by-step what happens when we run it:
Program starts → main() runs 
get_marks() asks: “Enter marks for subject 1, 2, 3” → User types 95, 88, 92 
Returns [95, 88, 92]  calculate_total() adds them → 275  
calculate_average() does 275/3 → 91.67 
get_grade() checks 91.67 ≥ 90 → Returns “A”  
Final output printed neatly.

## Conclusion 
Breaking big problems into small functions makes debugging easy.  
Real-world use: This logic is used in school management systems. 
Python concepts used: Functions, lists, loops, if-elif-else, return, input(), print().
