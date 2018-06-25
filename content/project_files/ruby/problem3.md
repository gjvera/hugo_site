---
title: "Problem 3 in Ruby"
description: ""
slug: "problem3rb"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
{{< highlight go  "linenos=inline">}}
number = 600851475143;
i = 2;
max_divisor = 0;
loop do
    if i > Integer.sqrt(number)
        break;
    end
    if number % i == 0
        max_divisor = i;
        number = number/i;
        i = 2;
    else
        i += 1;
    end
end
puts "#{number}"
{{< /highlight >}}
