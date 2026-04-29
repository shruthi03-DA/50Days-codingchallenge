## Day 35 – Python Coding Challenge
## 🔹 Built-in Functions & Data Structures
## 📌 Overview
This challenge focuses on using Python’s built-in functions and data structures to solve common problems efficiently.

## 🚀 Challenge 1: Flatten a Nested List
🧠 Concept
List Comprehension
❓ Problem
nested = [[1, 2], [3, 4], [5]]
✅ Solution
nested = [[1, 2], [3, 4], [5]]

flattened = [item for sublist in nested for item in sublist]

print(flattened)
🔍 Explanation
Iterate through each sublist
Extract each item from sublist
Combine all items into a single list
📌 Output
[1, 2, 3, 4, 5]

## 🚀 Challenge 2: Check Anagram
🧠 Concept
sorted()
❓ Problem
s1 = "listen"
s2 = "silent"
✅ Solution
s1 = "listen"
s2 = "silent"

print(sorted(s1) == sorted(s2))

## 🔍 Explanation
Sort both strings
Compare sorted results
If equal → strings are anagrams
📌 Output
True

## 🚀 Challenge 3: Find Missing Number
# 🧠 Concept
set()
❓ Problem
nums = [1, 2, 4, 5]
✅ Solution
nums = [1, 2, 4, 5]

full_set = set(range(1, 6))
missing = full_set - set(nums)

print(missing.pop())

## 🔍 Explanation
Generate full range of numbers
Convert list to set
Subtract sets to find missing number
📌 Output
3

## 🚀 Challenge 4: Group Words by First Letter
# 🧠 Concept
Dictionary
setdefault()
❓ Problem
words = ["apple", "ant", "banana", "bat"]
✅ Solution
words = ["apple", "ant", "banana", "bat"]

grouped = {}

for word in words:
    grouped.setdefault(word[0], []).append(word)

print(grouped)

## 🔍 Explanation
Use first character as key
Group words into lists
setdefault() avoids checking if key exists
📌 Output
{'a': ['apple', 'ant'], 'b': ['banana', 'bat']}

## 🚀 Challenge 5: Remove Empty Values
## 🧠 Concept
Dictionary Comprehension
❓ Problem
data = {"a": 1, "b": None, "c": 3, "d": None}
✅ Solution
data = {"a": 1, "b": None, "c": 3, "d": None}

cleaned = {k: v for k, v in data.items() if v is not None}

print(cleaned)

## 🔍 Explanation
Iterate through dictionary items
Keep only values that are not None

## 📌 Output
{'a': 1, 'c': 3}
