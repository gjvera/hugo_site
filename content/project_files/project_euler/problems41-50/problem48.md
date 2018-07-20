---
title: "Problem 48"
description: ""
slug: "problem48"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Perl6
{{< highlight go  "linenos=inline">}}
say ([+] (1..1000).map({ $_ ** $_ })).sum.comb.tail(10).join;
{{< /highlight >}}
