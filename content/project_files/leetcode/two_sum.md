---
title: "Two Sum"
description: ""
slug: "two_sum"
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
    def twoSum(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: List[int]
        """
        for i in range(0, len(nums)):
            for j in range(i+1, len(nums)):
                if (nums[j] == target - nums[i]):
                    return [i, j]
{{< /highlight >}}
