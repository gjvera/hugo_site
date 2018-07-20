---
title: "Problem 25"
description: ""
slug: "problem25"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Perl6
{{< highlight go  "linenos=inline">}}
say (1, 1, * + *... *.chars == 1000).elems
{{< /highlight >}}
Clojure
{{< highlight go  "linenos=inline">}}
(def gen-fib
      (lazy-cat [[0 0N] [1 1N]] (map (fn [[i1 f1] [i2 f2]] [(inc i1) (+ f1 f2)]) (rest gen-fib) gen-fib)))

(defn -main
  []
  (println (first (first (filter #(>= (count (str (last %))) 1000) gen-fib)))))
{{< /highlight >}}
