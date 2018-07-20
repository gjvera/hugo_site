---
title: "Problem 23"
description: ""
slug: "problem23"
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
#include<stdlib.h>

struct sum_nums{
    int num;
    struct sum_nums * next;
};

struct abundant_nums{
    int abundant_num;
    struct abundant_nums * next;
};

struct abundant_nums * head = NULL;
struct sum_nums * first = NULL;

void add_to_sum_nums(int num){
    if(first == NULL){
        first = malloc(sizeof(struct sum_nums));
        first->num = num;
        first->next = NULL;
    }
    else{
        struct sum_nums * temp = first;
        while(temp->next != NULL){
            temp = temp->next;
        }
        temp->next = malloc(sizeof(struct sum_nums));
        temp->next->num = num;
        temp->next->next = NULL;
    }
}

void add_to_abundant(int num){
    if(head == NULL){
        head = malloc(sizeof(struct abundant_nums));
        head->abundant_num = num;
        head->next = NULL;
    }
    else{
        struct abundant_nums * temp = head;
        while(temp->next != NULL){
            temp = temp->next;
        }
        temp->next = malloc(sizeof(struct abundant_nums));
        temp->next->abundant_num = num;
        temp->next->next = NULL;
    }
}
void is_abundant(int num){
    int sum = 0;
    printf("Current number: %d", num);
    for(int i = 1; i < num -1; i++){
        if(num % i == 0){
            printf("%d\n\n", i);
            sum += i;
        }
    }
    if(sum > num){
        printf("%d is abundant\n\n", num);
        add_to_abundant(num);
    }
}


void can_be_written_as_sum(int num){
    struct abundant_nums * temp = head;
    struct abundant_nums * iterator;
    int is_sum = 0;
    while(temp != NULL && is_sum == 0){
        int difference = num - temp->abundant_num;
        if(difference > 0){
            iterator = temp->next;
            while(iterator != NULL && is_sum == 0){
                if(iterator->abundant_num == difference){
                    is_sum = 1;
                }
                iterator = iterator->next;
            }
        }
        temp = temp->next;
    }
    if(is_sum == 0){
        printf("\n%d cannot be written as sum", num);
        add_to_sum_nums(num);        
    }
}

int get_sum(){
    int sum = 0;
    struct sum_nums * iterator = first;
    while(iterator != NULL){
        sum += iterator->num;
        iterator = iterator->next;
    }
    return sum;
}

int main(){
    for(int i = 12; i < 28123; i++){
        is_abundant(i);
    }

    for(int i = 24; i < 30000; i++){
        can_be_written_as_sum(i);
    }

    printf("Sum of nums %d\n", get_sum());
}

{{< /highlight >}}
