---
title: "Problem 6 in Ruby"
description: ""
slug: "problem6rb"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
{{< highlight go  "linenos=inline">}}
sum_squares = 0
count = 0
square_sum = 0
loop do
    if count == 101 
        break
    end
    sum_squares += (count ** 2)
    square_sum += count
    count += 1
end 
puts"#{(square_sum ** 2) - sum_squares}"
{{< /highlight >}}
