---
title: "Palindrome Number"
description: ""
slug: "palindrome_number"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Python
{{< highlight go  "linenos=inline">}}
class Solution:
    def isPalindrome(self, x):
        """
        :type x: int
        :rtype: bool
        """
        if len(str(x)) == 1:
            return True
        num = x
        if num < 0:
            return False
        reverse = ""
        while num != 0:
            reverse += str((num % 10))
            num //= 10
        if x == int(reverse):
            return True
        else:
            return False
{{< /highlight >}}
