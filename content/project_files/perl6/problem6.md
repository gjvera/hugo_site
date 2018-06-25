---
title: "Problem 6 in Perl 6"
description: ""
slug: "problem6p6"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
{{< highlight go  "linenos=inline">}}
say ((1..100).sum ** 2) - ((1..100).map(* ** 2).sum)
{{< /highlight >}}
