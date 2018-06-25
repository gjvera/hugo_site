---
title: "Problem 6 in Clojure"
description: ""
slug: "problem6cl"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
{{< highlight go  "linenos=inline">}}
(defn -main 
  []
  (println (- (int (Math/pow (reduce + (range 1 101)) 2)) (int (reduce + (map #(Math/pow % 2) (range 1 101)))))))
{{< /highlight >}}
