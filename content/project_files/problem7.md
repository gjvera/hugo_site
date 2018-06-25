---
title: "Problem 7"
description: ""
slug: "problem7"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Ruby
{{< highlight go  "linenos=inline">}}
counter = 0;
num = 1;
loop do
    prime = true;
    temp = 2;
    while temp <= Math.sqrt(num) 
        if num % temp == 0
            prime = false;
            break;
        end
        temp += 1;
    end
    if prime == true
        counter += 1;
    end
    if counter == 10002
        break;
    end
    num += 1;
end
puts"#{num}";
{{< /highlight >}}

Clojure
{{< highlight go  "linenos=inline">}}
(ns problem7.core)

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
  (println (nth (filter is-prime? (range)) 10001)))
{{< /highlight >}}


