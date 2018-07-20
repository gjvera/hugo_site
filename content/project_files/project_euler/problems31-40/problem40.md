---
title: "Problem 40"
description: ""
slug: "problem40"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Perl6
{{< highlight go  "linenos=inline">}}
my @array = (0, 1 ... 200000)>>.comb.flat;
say @array[1000000] * @array[1] * @array[10] * @array[100] * @array[1000] * @array[10000] * @array[100000]
{{< /highlight >}}
