---
title: "Problem 2"
description: ""
slug: "problem2"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Ruby
{{< highlight go  "linenos=inline">}}
sum_even = 0;
term_prev = 1;
term_current = 1;
loop do
    if term_current >= 4000000
        break
    end
    temp = term_current;
    term_current = term_current + term_prev;
    term_prev = temp;
    if term_current % 2 == 0
        sum_even += term_current;
    end 
end
puts "#{sum_even}"
{{< /highlight >}}

Clojure
{{< highlight go  "linenos=inline">}}
(ns problem2.core)
;generate a list of the fibonacci numbers
(def gen-fib 
  (lazy-cat [0 1] (map + (rest gen-fib) gen-fib)))

(defn -main 
  []
  (println (reduce + (filter even? (take-while (partial > 4000000) gen-fib)))))

{{< /highlight >}}

Perl 6
{{< highlight go  "linenos=inline">}}
say (1, 1, *+ *... ^*> 4000000 ).grep( * %% 2 ).sum;
{{< /highlight >}}

Java
{{< highlight go  "linenos=inline">}}
class FibSum{
    public static void main(String args[]){
        double prevTerm = 1;
        double curTerm = 1;
        double tempTerm;
        int sum = 0;
        while(curTerm < 4000000){
            tempTerm = curTerm;
            curTerm = prevTerm + curTerm;
            prevTerm = tempTerm;
            if(curTerm % 2 == 0){
                sum += curTerm;
            }
        }
        System.out.printf("%d\n", sum);
    }
}
{{< /highlight >}}
