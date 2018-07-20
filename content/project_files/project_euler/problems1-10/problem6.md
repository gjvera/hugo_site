---
title: "Problem 6"
description: ""
slug: "problem6"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Ruby
{{< highlight go  "linenos=inline">}}
sum_squares = 0
count = 0
square_sum = 0
loop do
    if count == 101 
        break
    end
    sum_squares += (count ** 2)
    square_sum += count
    count += 1
end 
puts"#{(square_sum ** 2) - sum_squares}"
{{< /highlight >}}

Clojure
{{< highlight go  "linenos=inline">}}
(ns problem6.core)

(defn -main 
  []
  (println (- (int (Math/pow (reduce + (range 1 101)) 2)) (int (reduce + (map #(Math/pow % 2) (range 1 101)))))))
{{< /highlight >}}

Perl 6
{{< highlight go  "linenos=inline">}}
say ((1..100).sum ** 2) - ((1..100).map(* ** 2).sum)
{{< /highlight >}}

