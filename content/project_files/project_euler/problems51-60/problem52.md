---
title: "Problem 52"
description: ""
slug: "problem52"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Perl6
{{< highlight go  "linenos=inline">}}
say (1..*).first({$_.comb.sort.join == (2 * $_).comb.sort.join == (3 * $_).comb.sort.join == (4 * $_).comb.sort.join 
== (5 * $_).comb.sort.join == (6 * $_).comb.sort.join}) 
{{< /highlight >}}
