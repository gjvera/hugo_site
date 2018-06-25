---
title: "Problem 4 in Clojure"
description: ""
slug: "problem4cl"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
{{< highlight go  "linenos=inline">}}
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
