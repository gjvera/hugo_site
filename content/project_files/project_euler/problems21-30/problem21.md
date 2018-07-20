---
title: "Problem 21"
description: ""
slug: "problem21"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Ruby
{{< highlight go  "linenos=inline">}}
def get_proper_divisors(num)
    list = (1..num - 1).to_a
    divisors = []
    list.map{|n| if num % n == 0 
             divisors.push(n)
    end}
    divisors.reduce(:+)
end

def is_amicable(num)
    a = get_proper_divisors(num)
    b = get_proper_divisors(a)
    if a != b
        if b == num 
            true
        else
            false
        end
    end
end

amicable = []
(220..9999).to_a.map{|n| if is_amicable(n) == true 
                     amicable.push(n)
end}
puts amicable.reduce(:+)
{{< /highlight >}}
C
{{< highlight go  "linenos=inline">}}
#include<stdio.h>
#include<math.h>
#include<stdlib.h>

struct pair_am_num{
    int a;
    int b;
    struct pair_am_num * next;
};

struct num_exists{
    int num;
    struct num_exists * next;
};

struct pair_am_num * head = NULL;
struct num_exists * tracker = NULL;
int d(int num){
    int sum = 0;
    printf("%d\n", num);
    for(int i = 2; i <num; i++){
        if(num % i == 0){
            printf("adding %d\n", i);
            sum += i;
        }
    }
     sum++; //include 1
     return sum;
}

void add_to_am_num(int a, int b){
    if(head == NULL){
        head = malloc(sizeof(struct pair_am_num));
        head->a = a;
        head->b = b;
        head->next = NULL;
    }
    else{
        struct pair_am_num * temp = head;
        while(temp->next != NULL){
            temp = temp->next;
        }
        temp->next = malloc(sizeof(struct pair_am_num));
        temp->next->a = a;
        temp->next->b = b;
        temp->next->next = NULL;
    }
}

int does_exist(int num){
    if(tracker == NULL){
        tracker = malloc(sizeof(struct num_exists));
        tracker->num = num;
        tracker->next = NULL;
        return 0;
    }
    else{
        struct num_exists * temp = tracker;
        while(temp->next != NULL){
            if(temp->num == num){
                return 1;
            }
            temp = temp->next;
        } 
        temp->next = malloc(sizeof(struct num_exists));
        temp->next->next = NULL;
        temp->next->num = num;
        return 0;
    }
}

void get_pairs(){
    int b;
    for (int a = 1; a <= 10000; a++){
        b = d(a);
        printf("a: %d\n\nComparing %d and %d \n",a, b, d(b));
        if(d(b) == a && does_exist(a) == 0 && does_exist(b) == 0){
            add_to_am_num(a, b);
        }
    }
}

int get_sum(){
    get_pairs();
    struct pair_am_num * temp = head;
    int sum = 0;
    while(temp != NULL){
        sum = sum + temp->a + temp->b;
        temp = temp->next;
    }
    return sum;
}

int main(){
    printf("%d\n\n", get_sum());
    return 0;
}

{{< /highlight >}}
