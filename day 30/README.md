## Overall Objective
We implemented 5 core Python data-structure problems to demonstrate clean coding, logic building, and efficiency.
Each solution is tested with sample input and produces the correct output.

## 1. String Challenge: Longest Substring Without Repeating Characters
## Approach: 
We used a “sliding window” technique. Imagine a window moving across the string. We expand the right side of the window one character at a time. 
If we see a character that’s already inside our window, we shrink the window from the left until the duplicate is removed. 
Throughout, we keep track of the biggest window size we’ve seen.

## Code Logic:char_set keeps unique characters in the current window.
left and right are the window boundaries.When s[right] is a duplicate, we remove s[left] and move left forward.
After each step, we update max_length. Result: 3

## Conclusion: 
The longest substring without repeats is "abc". This method runs in O(n) time, so it’s efficient even for very long strings.

## 2. List Challenge: Remove Duplicates While Preserving Order
## Approach: 
We scan the list once. We use a set called seen to remember which numbers we’ve already added. 
If a number isn’t in seen, we add it to our result list and mark it as seen. 
This preserves the original order because we only add items the first time we encounter them.

## Result:
[1, 2, 3, 4, 5]

## Conclusion: 
Duplicates 2 and 3 were removed correctly, and the sequence of first appearances is maintained. Time complexity is O(n).

## 3. Tuple Challenge: Find Maximum and Minimum
## Approach: 
Python’s built-in max() and min() functions work directly on tuples.
They scan the tuple once and return the largest and smallest elements.

## Result:
javascript Max: 20, Min: 5

## Conclusion: 
The tuple contains 20 as the maximum and 5 as the minimum. This is the most direct and efficient method.

## 4. Dictionary Challenge: Character Frequency Counter
## Approach: 
We created an empty dictionary freq. For each character in the string:If the character already exists as a key, we add 1 to its value.
If not, we add it to the dictionary with value 1.

## Result: {'p': 1, 'r': 2, 'o': 1, 'g': 2, 'a': 1, 'm': 2, 'i': 1, 'n': 1}

## Conclusion: 
The code correctly shows r, g, and m appear twice, while all other letters appear once. This is a standard pattern for frequency counting in data cleaning.

## 5. Intermediate Challenge: Group Words by Length
## Approach: 
We use a dictionary where the key is the word length, and the value is a list of words with that length. For each word, we calculate len(word).
If that length isn’t a key yet, we create an empty list. Then we append the word to the correct list.

## Result: 
{3: ['cat', 'dog', 'bat'], 8: ['elephant'], 5: ['tiger']}

## Conclusion: 
All 3-letter words are grouped together, 5-letter words together, and 8-letter words together.
This grouping logic is very useful in text processing and NLP tasks.
