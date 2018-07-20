---
title: "Problem 30"
description: ""
slug: "problem30"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Perl6
{{< highlight go  "linenos=inline">}}
say [+] (2..350000).grep({([+] $_.comb.map(* ** 5)) == $_})
{{< /highlight >}}
Ruby
{{< highlight go  "linenos=inline">}}
elems = []
(2..500000).map{|n| num = n; n = n.to_s.split('').map(&:to_i);
                sum = 0
               n.each{|x| sum += x ** 5}
               if num == sum
                   elems.push(num)
               end
}
puts elems.reduce(:+)
{{< /highlight >}}
