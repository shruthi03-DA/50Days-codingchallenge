## Day 34 – Python Coding Challenge 🧠 Built-in Functions & Data Structures

Practiced solving real-world problems using Python built-in functions like set(), dict, max(), sorted(), and lambda.

# 🔹 1. Remove Duplicates & Preserve Order 📌 Problem

Given a list of student IDs, remove duplicates without changing order.

💻 Code ids = [101, 102, 101, 103, 102, 104]

unique_ids = [] seen = set()

for id in ids: if id not in seen: unique_ids.append(id) seen.add(id)

print(unique_ids) ✅ Output [101, 102, 103, 104]

# 🔹 2. Frequency Counter (Real-Time Analytics) 📌 Problem

Count how many times each product is sold.

💻 Code products = ["apple", "banana", "apple", "orange", "banana", "apple"]

frequency = {}

for item in products: frequency[item] = frequency.get(item, 0) + 1

print(frequency) ✅ Output {'apple': 3, 'banana': 2, 'orange': 1}

# 🔹 3. Find Top Scorer 📌 Problem

Find the student with highest marks.

💻 Code marks = {"A": 85, "B": 92, "C": 88}

top_scorer = max(marks, key=marks.get)

print(top_scorer) ✅ Output B

# 🔹 4. Common Elements in Two Lists 📌 Problem

Find common skills between two candidates.

💻 Code skills1 = ["Python", "SQL", "Excel"] skills2 = ["SQL", "Power BI", "Python"]

common = list(set(skills1).intersection(set(skills2)))

print(common) ✅ Output ['Python', 'SQL']

# 🔹 5. Sort Dictionary by Values 📌 Problem

Sort products by price.

💻 Code prices = {"apple": 50, "banana": 20, "orange": 30}

sorted_prices = sorted(prices.items(), key=lambda x: x[1])

print(sorted_prices) ✅ Output [('banana', 20), ('orange', 30), ('apple', 50)]
