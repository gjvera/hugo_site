---
title: "Problem 4 in Perl 6"
description: ""
slug: "problem4p6"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
{{< highlight go  "linenos=inline">}}
say max ([X*] (100..999, 100..999)).grep: {.flip eq $_}
{{< /highlight >}}
