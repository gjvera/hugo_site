---
title: "Problem 13"
description: ""
slug: "problem13"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Ruby
{{< highlight go  "linenos=inline">}}
  1 data = ''
  2 sum = 0
  3 f = File.open("problem13.txt", "r")
  4     f.each_line do |line|
  5         sum += line.to_i
  6     end
  7 sum = sum.to_s.split(//);
  8 ans = ''
  9 for index in 0 ... 10
 10     ans += sum[index].inspect
 11 end
 12 puts"#{ans.tr'"',''}"
{{< /highlight >}}

Clojure
{{<highlight go "linenos=inline">}}
(defn -main
  []
  (println (subs (str (reduce + (map clojure.edn/read-string (clojure.string/split-lines (slurp *in*))))) 0 10)))
  {{< /highlight >}}
