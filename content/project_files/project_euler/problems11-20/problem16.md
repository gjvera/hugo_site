---
title: "Problem 16"
description: ""
slug: "problem16"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Ruby
{{< highlight go  "linenos=inline">}}
num = 2**1000
num = num.to_s.split('').map(&:to_i)
result = 0;
num.each{ |x|
    result += x
}
puts"#{result}"
{{< /highlight >}}
