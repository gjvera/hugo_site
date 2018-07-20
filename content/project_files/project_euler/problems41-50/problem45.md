---
title: "Problem 45"
description: ""
slug: "problem45"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Python 3
{{< highlight go  "linenos=inline">}}
def gen_pent_num(num):
    return (num * (3 * num - 1))/2
def gen_hex_num(num):
    return (num * (2*num -1))

pent_num = list()
hex_num = list()

for i in range(1000, 55000):
    pent_num.append(gen_pent_num(i))
    hex_num.append(gen_hex_num(i))
for num in pent_num:
    if num in hex_num:
        print(int(num))
        exit()
{{< /highlight >}}
