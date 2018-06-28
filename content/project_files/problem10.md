---
title: "Problem 10"
description: ""
slug: "problem10"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Ruby
{{< highlight go  "linenos=inline">}}
def sum_primes_in_range(num, max)
    sum = 0
    loop do
        if num > max
            break
        end
        prime = true;
        temp = 2;
        while temp <= Math.sqrt(num) 
            if num % 2 == 0
                prime = false;
                break;
            end
            if num % temp == 0
                prime = false;
                break;
            end
            temp += 1
        end
        if prime == true
            sum += num
        end
        num += 1;
    end
    sum
end

a, b, c, d, e, f, g, h= [
    Thread.new{sum_primes_in_range(2, 250000)},
    Thread.new{sum_primes_in_range(250000, 500000)},
    Thread.new{sum_primes_in_range(500000, 750000)},
    Thread.new{sum_primes_in_range(750000, 1000000)},
    Thread.new{sum_primes_in_range(1000000, 1250000)},
    Thread.new{sum_primes_in_range(1250000, 1500000)},
    Thread.new{sum_primes_in_range(1500000, 1750000)},
    Thread.new{sum_primes_in_range(1750000, 2000000)}
].map(&:join).map(&:value)
sum_primes = a + b + c + d + e + f + g + h;
puts"#{sum_primes}"
{{< /highlight >}}

Perl6
{{< highlight go "linenos=inline">}}
say [+] (1 ... ^ 2_000_000).hyper.grep({is-prime($_)});
{{< /highlight >}}
Clojure
{{<highlight go "linenos=inline">}}
(ns problem10.core)

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
{{</highlight>}}
