---
title: "Problem 42"
description: ""
slug: "problem42"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Python 3
{{< highlight go  "linenos=inline">}}
import fileinput

def gen_n_triangle_numbers(num):
    return int((num * (num + 1))/2)

def is_triangle_word(word):
    triangle_nums = list()
    for i in range(1, 100):
        triangle_nums.append(gen_n_triangle_numbers(i))
    chars = list(word)
    sum_word = 0
    for char in chars:
        sum_word += (ord(char) - 64)
    iterator = 0
    found = False
    while iterator < len(triangle_nums) and not found:
        if triangle_nums[iterator] == sum_word:
            found = True
            return True
        iterator += 1
    return False

words = ""
count = 0
for line in fileinput.input("words.txt"):
    words += line.strip()
words = words.replace('"', '').split(',')
for word in words:
    if is_triangle_word(word):
        count += 1
print(count)
{{< /highlight >}}
