---
title: "Letter Combinations of a Phone Number"
description: ""
slug: "letter_combinations_phone_number"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Python
{{< highlight go  "linenos=inline">}}
from itertools import product 
class Solution:
    def get_letters(self, x):
        if x == 2:
            return list("abc")
        elif x == 3:
            return list("def")
        elif x == 4:
            return list("ghi")
        elif x == 5:
            return list("jkl")
        elif x == 6:
            return list("mno")
        elif x == 7:
            return list("pqrs")
        elif x == 8:
            return list("tuv")
        elif x == 9:
            return list("wxyz")

    def letterCombinations(self, digits):
        """
        :type digits: str
        :rtype: List[str]
        """
        if digits == "":
            return []
        numbers = list(digits)
        all_letters = []
        ans = []
        for num in numbers:
            temp = self.get_letters(int(num))
            all_letters.append(temp)
        combo = list(product(*all_letters))
        for comb in combo:
            ans.append(''.join(comb))
        return ans
{{< /highlight >}}
