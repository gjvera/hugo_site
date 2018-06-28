---
title: "Problem 9"
description: ""
slug: "problem9"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Ruby
{{< highlight go  "linenos=inline">}}
m = 2
break_nested = false;
loop do
    if m > 1000
        break
    end
    n = 1
    loop do
        if n > m
            break
        end
        a = ((m ** 2) - (n ** 2))
        b = (2*m * n)
        c = (m ** 2 + n ** 2)
        if a + b + c == 1000
            puts"#{a*b*c}"
            break_nested = true;
            break
        end
        n +=1
    end
    break if break_nested;
    m += 1
end
{{< /highlight >}}

