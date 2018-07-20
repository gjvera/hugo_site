---
title: "Problem 41"
description: ""
slug: "problem41"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Perl6
{{< highlight go  "linenos=inline">}}
say (max (1..7).permutations.hyper.grep(*.join.is-prime)).join
{{< /highlight >}}
