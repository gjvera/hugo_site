---
title: "Problem 1 in Perl 6"
description: ""
slug: "problem1p6"
image: pic10.jpg
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
{{< highlight go  "linenos=inline">}}
sum = 0;
i = 0;
loop do
    if i == 1000
        break
    end
    if i % 3 == 0 || i % 5 == 0
        sum += i
    end
    i += 1
end
puts "#{sum}"
{{< /highlight >}}