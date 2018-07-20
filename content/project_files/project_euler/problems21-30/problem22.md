---
title: "Problem 22"
description: ""
slug: "problem22"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Perl6
{{< highlight go  "linenos=inline">}}
my $iterator = 0;
say [+] slurp.subst('"', '', :g).split(",").sort.map(++$iterator * *.comb.map(*.ord-64).sum)
{{< /highlight >}}
