---
title: "Problem 1 in Clojure"
description: ""
slug: "problem1cl"
image: pic10.jpg
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
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
