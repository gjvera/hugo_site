---
title: "Problem 69"
description: ""
slug: "problem69"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Perl6
{{< highlight go  "linenos=inline">}}
my @primes = (1..*).grep(*.is-prime);
my $ans = 1;
for @primes -> $prime { last if $ans * $prime > 1_000_000 ; $ans *= $prime; }
say $ans
{{< /highlight >}}
