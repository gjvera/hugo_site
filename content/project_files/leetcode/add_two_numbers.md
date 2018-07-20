---
title: "Add Two Numbers"
description: ""
slug: "add_two_numbers"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
C
{{< highlight go  "linenos=inline">}}
/*Definition for singly-linked list.
  struct ListNode {
      int val;
      struct ListNode *next;
  };*/
void add_num_to_list(struct ListNode ** res, int num){
    printf("%d\n", num);
    if(*res == NULL){
        (*res) = malloc(sizeof(struct ListNode));
        (*res)->val = num;
        (*res)->next = NULL;
    }
    else{
        struct ListNode * temp = *res;
        while(temp->next != NULL){
            temp = temp->next;
        }
        temp->next = malloc(sizeof(struct ListNode));
        temp->next->val = num;
        temp->next->next = NULL;
    }
}

struct ListNode* addTwoNumbers(struct ListNode* l1, struct ListNode* l2) {
    struct ListNode * temp1 = l1;
    struct ListNode * temp2 = l2;
    struct ListNode * ans = NULL;
    char * num1 = "";
    char * num2 = "";
    int carry = 0;
    int num;
    int i = 0;
    while (temp1 != NULL && temp2 != NULL){
        num = temp1->val + temp2->val + carry;
        carry = 0;
        if (num > 9){
            num = num % 10;
            carry = 1;
            add_num_to_list(&ans, num);
        }
        else{
            add_num_to_list(&ans, num);
        }
        temp1 = temp1->next;
        temp2 = temp2->next;
    }
    if(carry == 1 && temp1 == NULL && temp2 == NULL){
        add_num_to_list(&ans, carry);
        carry = 0;
    }
    while(temp1 != NULL){
        num = temp1->val + carry;
        carry = 0;
          if (num > 9){
            num = num % 10;
            carry = 1;
            add_num_to_list(&ans, num);
        }
        else{
            add_num_to_list(&ans, num);
        }
        temp1 = temp1->next;
    }
    while(temp2 != NULL){
        num = temp2->val + carry;
        carry = 0;
          if (num > 9){
            num = num % 10;
            carry = 1;
            add_num_to_list(&ans, num);
        }
        else{
            add_num_to_list(&ans, num);
        }
        temp2 = temp2->next;
    }
     if(carry == 1 && temp1 == NULL && temp2 == NULL){
        add_num_to_list(&ans, carry);
        carry = 0;
    }
    return ans;
}
{{< /highlight >}}
