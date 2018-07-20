---
title: "Remove Nth Node From End of List"
description: ""
slug: "remove-nth-node-from-end-of-list"
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
struct ListNode* removeNthFromEnd(struct ListNode* head, int n) {
    int count = 0;
    struct ListNode * temp = head;
    while(temp != NULL){
        temp = temp->next;
        count++;
    }
    if (count == 1 && n == 1){
        return NULL;
    }
    count = (count - n);
    temp = head;
    while(count != 0){
        temp = temp->next;
        count--;
    }
    if(temp == head && temp->next != NULL){
        return temp->next;
    }
    struct ListNode * prev_temp = head;
    while(prev_temp->next != temp){
        prev_temp = prev_temp->next;
    } 
    prev_temp->next = temp->next;
    return head;
}
{{< /highlight >}}
