---
title: "Problem 59"
description: ""
slug: "problem59"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Perl6
{{< highlight go  "linenos=inline">}}
my @letters = (97..122).map(*.chr).combinations(3).flatmap(*.permutations).rotor(3);
my @cipher-text = slurp.split(",");
my $string = '';
for @letters -> @letter-combination {
    $string = ((@letter-combination>>.ord xx *).flat Z+^ @cipher-text)>>.chr.join;
    last if $string.contains(all <and can he be in was>);
} 
say $string; 
print "\n\n";
say [+] $string.comb>>.ord;
{{< /highlight >}}
