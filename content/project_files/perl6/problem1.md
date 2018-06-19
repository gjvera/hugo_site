---
title: "Problem 1 in Perl 6"
description: ""
slug: "problem1p6"
image: pic10.jpg
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
{{< highlight go  "linenos=inline">}}
#Find the sum of all the multiples of 3 or 5 below 1000
say [+] ( 1 .. ^ 1000 ) . grep( { !( $_ % ( 3 & 5 ) ) } );
{{< /highlight >}}
