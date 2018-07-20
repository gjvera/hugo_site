---
title: "Problem 19"
description: ""
slug: "problem19"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
C
{{< highlight go  "linenos=inline">}}
#include<stdio.h>
const int NUM_MONTHS_IN_99_YEARS = 1200;
struct month{
    int num_days;
};

int main(){
    int upper_bound = 36135; //number of days in 99 years  
    struct month iterator[NUM_MONTHS_IN_99_YEARS]; //number of months in 99 years
    int month_array = 0;
    for (int i = 1901; i < 2001; i++){
        iterator[month_array].num_days = 31;
        month_array++;
        if(i % 4 == 0){
            iterator[month_array].num_days = 29;
        }   
        else{
            iterator[month_array].num_days = 28;
        }
        month_array++;
        iterator[month_array].num_days = 31;
        month_array++;
        iterator[month_array].num_days = 30;
        month_array++;
        iterator[month_array].num_days = 31;
        month_array++;
        iterator[month_array].num_days = 30;
        month_array++;
        iterator[month_array].num_days = 31;
        month_array++;
        iterator[month_array].num_days = 31;
        month_array++;
        iterator[month_array].num_days = 30;
        month_array++;
        iterator[month_array].num_days = 31;
        month_array++;
        iterator[month_array].num_days = 30;
        month_array++;
        iterator[month_array].num_days = 31;
        month_array++;
    }
    int num_sun_first = 0;
    int cur_sunday = 6; //first sunday was the fifth of january in 1901
    int i = 0;
    while (i <= NUM_MONTHS_IN_99_YEARS){
        cur_sunday += 7;
        if(cur_sunday > iterator[i].num_days){
            if(cur_sunday - iterator[i].num_days == 1){
                num_sun_first++;
            }
            cur_sunday = cur_sunday - iterator[i].num_days;
            i++;
        }

    }
    printf("%d\n", num_sun_first);
    return 0;
}

{{< /highlight >}}
