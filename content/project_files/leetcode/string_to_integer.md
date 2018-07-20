---
title: "String to Integer"
description: ""
slug: "string_to_integer"
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
    def myAtoi(self, str):
        """
        :type str: str
        :rtype: int
        """
        str = str.strip()
        if str == "":
            return 0
        ans = ""
        negative = False
        i = 0
        if (str[i] == "-" or str[i] == "+") and len(str) == 1:
            return 0
        if str[i] == "-":
            negative = True
            i += 1
        if str[i] == "+":
            i += 1
        if i > 1:
            return 0
        no_whitespace = False
        while i < len(str) and str[i].isdigit() and not no_whitespace:
            if no_whitespace:
                break
            ans+=str[i]
            i += 1
        if ans == "":
            return 0
        if negative == True:
            if (int(ans) * -1) < -2147483648:
                return -2147483648
            return (int(ans) * -1)
        if int(ans) > 2147483647:
            return 2147483647
        else:
            return int(ans)
{{< /highlight >}}
