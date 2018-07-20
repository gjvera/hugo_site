---
title: "Problem 4"
description: ""
slug: "problem4"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Ruby
{{< highlight go  "linenos=inline">}}
num = 999;
current_palin = 0;
loop do
    second_num = 999;
    loop do
        current_product = num * second_num;
        if current_product.to_s.reverse ==  current_product.to_s 
            if current_palin < current_product 
                current_palin = current_product.to_i;
            end
        end
        second_num -= 1;
        if second_num < 100 
            break;
        end
    end
    num -= 1;
    if num < 100 
        break;
    end
end
puts"#{current_palin}";
{{< /highlight >}}

Clojure
{{< highlight go  "linenos=inline">}}
(ns problem4.core)

(defn is-palindrome?
  [num]
   (= (str num) (apply str (reverse (str num)))))

(defn get-val
  [num]
  (cond 
    (= (is-palindrome? num) true) num
    :else 0))

(defn cart-prod 
  []
  (for [x (range 100 1000)
        y (range 100 1000)]
    (* x y)))

(defn -main
  []
  (println (apply max (map get-val (cart-prod)))))
{{< /highlight >}}

Perl 6
{{< highlight go  "linenos=inline">}}
say max ([X*] (100..999, 100..999)).grep: {.flip eq $_}
{{< /highlight >}}

