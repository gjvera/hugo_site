---
title: "Swap Nodes in Pairs"
description: ""
slug: "swap-nodes-in-pairs"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
C
{{< highlight go  "linenos=inline">}}
struct ListNode* swapPairs(struct ListNode* head) {
    if (head == NULL || head->next == NULL){
        return head;
    }
    struct ListNode * temp = head;
    int num_to_swap;
    while(temp != NULL){
        if(temp->next == NULL){
            break;
        }
        num_to_swap = temp->val;
        temp->val = temp->next->val;
        temp->next->val = num_to_swap;
        temp = temp->next->next;
    }
    return head;
}
{{< /highlight >}}
