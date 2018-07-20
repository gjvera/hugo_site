---
title: "Problem 46"
description: ""
slug: "problem46"
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
my $iterator;
my $is-square-num;
my $found;
sub is-answer($num) {
    $iterator = 0;
    $found = True;
    while @primes[$iterator] < $num {
        $is-square-num = sqrt(($num - @primes[$iterator])/2);
        if $is-square-num % 1 == 0 { return False } 
        $iterator += 1;
    }
    if $found { return True }
}

say (33..*).first({
    $_ % 2 == 1 and !($_.is-prime) and is-answer($_) 
})
{{< /highlight >}}
