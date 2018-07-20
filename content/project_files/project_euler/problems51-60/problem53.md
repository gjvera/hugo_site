---
title: "Problem 53"
description: ""
slug: "problem53"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Perl6
{{< highlight go  "linenos=inline">}}
sub get-combination($n, $r) {
    my $numerator = [*] (1..$n);
    my $r-fact = [*] (1..$r);
    my $diff-fact = [*] (1..($n-$r));
    return $numerator/($r-fact * $diff-fact);
}

my @n = (23..100);
my $ans = 0;
for @n -> $this-n {
    $ans += (1..$this-n).grep({get-combination($this-n, $_) > 1_000_000}).elems;
}
say $ans
{{< /highlight >}}
