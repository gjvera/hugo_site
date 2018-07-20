---
title: "Problem 1"
description: ""
slug: "problem1"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Ruby
{{< highlight go  "linenos=inline">}}
sum = 0;
i = 0;
loop do
    if i == 1000
        break
    end
    if i % 3 == 0 || i % 5 == 0
        sum += i
    end
    i += 1
end
puts "#{sum}"
{{< /highlight >}}

Clojure
{{< highlight go  "linenos=inline">}}
(ns problem1.core)

(defn mod3or5?
  [x]
  (cond
    (= (mod x 3) 0) x
    (= (mod x 5) 0) x
    :else 0))

(defn -main 
  []
   (println (reduce + (map mod3or5? (range 1 1000)) )))
{{< /highlight >}}

Perl 6
{{< highlight go  "linenos=inline">}}
say [+] ( 1 .. ^ 1000 ).grep({ !($_ % ( 3 & 5 ))});
{{< /highlight >}}

Java
{{< highlight go  "linenos=inline">}}
class SumMod3or5 {
    public static void main(String args[]){
        int UpperBound = 1000;
        int sum = 0;
        for(int i = 3; i < UpperBound; i++){
            if(i % 3 == 0 || i % 5 == 0){
                sum += i;
            }
        }
        System.out.printf("%d\n", sum);
    }
}
{{< /highlight >}}
