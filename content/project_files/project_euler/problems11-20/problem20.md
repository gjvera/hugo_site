---
title: "Problem 20"
description: ""
slug: "problem20"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Ruby
{{< highlight go  "linenos=inline">}}
puts ((1..100).reduce(:*)).to_s.split('').map(&:to_i).reduce(:+)
{{< /highlight >}}
Perl 6
{{< highlight go  "linenos=inline">}}
[+] ([*] (1..100)).split("")
{{< /highlight >}}
