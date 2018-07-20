---
title: "Problem 35"
description: ""
slug: "problem35"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Ruby
{{< highlight go  "linenos=inline">}}
count = 0
counter = 1

def prime?(num)
  if (num % 2).zero?
    false
  else
    iterator = 3
    while iterator < Math.sqrt(num)
      false if (num % iterator).zero?
      iterator += 1
    end
    true
  end
end

loop do
  is_circular_prime = true
  break if counter == 1_000_000
  puts "Counter: #{counter}"
  arr = counter.to_s.chars.to_a.permutation.to_a
  arr.map{ |x|  if prime?(x.join.to_s.to_i) == false
           is_circular_prime = false
  end
  }
  count += 1 if is_circular_prime == true
  counter += 1
end
puts count
{{< /highlight >}}
