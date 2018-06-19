---
title: "Test"
description: ""
slug: "test"
image: pic10.jpg
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
{{< highlight go  "linenos=inline">}}
(defn is-prime? 
  [x]
  (if (= x 0) false
  (loop [iter 2 top (int (Math/sqrt x))]
    (if (> iter top)
      true
      (if (= 0 (mod x iter))
        false
(recur (inc iter) top))))))

(defn -main
  []
  (println (reduce + (filter is-prime? (range 2000000)))))
{{< /highlight >}}
