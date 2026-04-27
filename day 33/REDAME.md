## 📅 Day 33 – Coding Challenge (Placement + Real-World Thinking)
## 🚀 Overview
Focuses on strengthening loop logic, number manipulation, and real-world data handling scenarios. 
These problems are commonly asked in placements and interviews and also reflect data analyst thinking.

## 🔹 Level 1: Placement Thinking
1️⃣ Number Guessing Game
# 📌 Problem: Guess the correct number until you win.

## 💡 Concepts Used:

Infinite loop (while True)
Conditional statements (if-elif-else)
Loop control (break)
secret_number = 7

while True:
    guess = int(input("Enter your guess: "))

    if guess < secret_number:
        print("Too Low")
    elif guess > secret_number:
        print("Too High")
    else:
        print("You Won!")
        break
## 2️⃣ Reverse a Number
# 📌 Problem: Reverse a given number using a loop.

Example: Input: 5678 Output: 8765

💡 Concepts Used:

While loop
Modulus % (extract last digit)
Integer division // (remove last digit)
num = int(input("Enter a number: "))
reverse = 0

while num > 0:
    digit = num % 10
    reverse = reverse * 10 + digit
    num = num // 10

print("Reversed number:", reverse)

## 3️⃣ Count Digits in a Number
# 📌 Problem: Find total number of digits in a number.

Example: Input: 24039 Output: 5

💡 Concepts Used:

Loop iteration
Integer division
num = int(input("Enter a number: "))
count = 0

while num > 0:
    num = num // 10
    count += 1

print("Total digits:", count)

## 🔹 Level 2: Real-World (Data Analyst Thinking)
# 4️⃣ Sales Threshold Checker
📌 Problem: Filter and count sales greater than 1000.

💡 Concepts Used:

Loop through list
Conditional filtering
Counting logic (similar to SQL WHERE + COUNT)
sales = [1200, 800, 1500, 400, 2000]

count = 0

for s in sales:
    if s > 1000:
        print("High Sale:", s)
        count += 1

print("Total high sales:", count)

## 5️⃣ Continuous Data Entry System
# 📌 Problem: Keep taking input until user enters 0, then print total sum.

💡 Concepts Used:

Infinite loop
Break condition
Accumulator pattern
total = 0

while True:
    num = int(input("Enter number (0 to stop): "))

    if num == 0:
        break

    total += num

print("Total sum:", total)
🧠 Key Learnings
Use while loop when iterations are unknown

Use for loop when working with lists or datasets

% 10 → Extract last digit

// 10 → Remove last digit

break → Exit loop when condition is met

Think like a Data Analyst:

Filtering data
Counting records
Aggregating values

## 🎯 Conclusion
These builds a strong foundation in:

Logical thinking
Loop control
Real-world data processing
