---
title: "Problem 36"
description: ""
slug: "problem36"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Python
{{< highlight go  "linenos=inline">}}
def get_bin_num(num):
    temp_num = num
    binary = ""
    while temp_num != 0:
        binary += (str(temp_num % 2))
        temp_num //= 2
    return binary

def is_palin(num):
    if num == num[::-1]:
        return True
    return False

def main():
    sum_palin = 0
    for i in range(1, 1000000):
        bin_num = get_bin_num(i)
        if is_palin(bin_num) and is_palin(str(i)):
            sum_palin += i
    print(sum_palin)

if __name__ == '__main__':main()
{{< /highlight >}}
