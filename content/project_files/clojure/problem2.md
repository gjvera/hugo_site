---
title: "Problem 2 in Clojure"
description: ""
slug: "problem2cl"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Clojure was nice for this problem, because you can just concatenate all the terms from gen-fib to form a lazy sequence.  
{{< highlight go  "linenos=inline">}}
(ns problem2.core)

(def gen-fib 
  (lazy-cat [0 1] (map + (rest gen-fib) gen-fib)))

(defn -main 
  []
  (println (reduce + (filter even? (take-while (partial > 4000000) gen-fib)))))
{{< /highlight >}}
