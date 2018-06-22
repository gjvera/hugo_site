---
title: "Problem 2 in Perl 6"
description: ""
slug: "problem2rb"
image: pic10.jpg
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
{{< highlight go  "linenos=inline">}}
sum_even = 0;
term_prev = 1;
term_current = 1;
loop do
    if term_current >= 4000000
        break
    end
    temp = term_current;
    term_current = term_current + term_prev;
    term_prev = temp;
    if term_current % 2 == 0
        sum_even += term_current;
    end 
end
puts "#{sum_even}"
{{< /highlight >}}
