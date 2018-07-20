---
title: "Problem 37"
description: ""
slug: "problem37"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Python
{{< highlight go  "linenos=inline">}}
import math
def is_prime(num):
    if num == 2:
        return True
    if num == 1:
        return False
    #rule out all even numbers to cut run time
    if num % 2 == 0:
        return False
    for i in range(2, math.ceil(math.sqrt(num)) + 1):
        if num % i == 0:
            return False
    return True

def is_truncatable(num):
    check_front = str(num)
    check_back = str(num)
    test_is_prime = True
    check_front = check_front[1:]
    while test_is_prime and check_front != "":
        test_is_prime = is_prime(int(check_front))
        if not test_is_prime:
            return False
        check_front = check_front[1:]
    if not test_is_prime:
        return False
    check_back = check_back[:-1]
    while test_is_prime and check_back != "":
        test_is_prime = is_prime(int(check_back))
        if not test_is_prime:
            return False
        check_back = check_back[:-1]
    if test_is_prime:
        return True

def main():
    sum_num = 0
    count = 0
    iterator = 10
    while count != 11 and iterator <= 1000000:
        if is_prime(iterator):
            if is_truncatable(iterator):
                sum_num += iterator
                count += 1
        iterator += 1
    print(sum_num)



if __name__ == "__main__":main()
{{< /highlight >}}
