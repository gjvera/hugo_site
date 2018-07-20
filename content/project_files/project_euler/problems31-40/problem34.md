---
title: "Problem 34"
description: ""
slug: "problem34"
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
