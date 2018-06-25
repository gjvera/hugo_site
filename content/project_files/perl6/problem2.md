---
title: "Problem 2 in Perl 6"
description: ""
slug: "problem2p6"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
{{< highlight go  "linenos=inline">}}
say( 1, 1, *+* ... ^*> 4000000).grep( * %% 2 ).sum;
{{< /highlight >}}
