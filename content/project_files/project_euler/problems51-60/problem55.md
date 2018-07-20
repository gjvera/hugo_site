---
title: "Problem 55"
description: ""
slug: "problem55"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Perl6
{{< highlight go  "linenos=inline">}}
my $num-of-lychrel = 0;
my $num;
my $is-lychrel;
my $count = 0;
(10..10000).map({
    my $num = $_;
    $is-lychrel = True;
    $count = 0;
    while $count < 55 {
        $num = $num + $num.flip;
        if $num == $num.flip { $is-lychrel = False } ;
        $count += 1;
    }
    if $is-lychrel { $num-of-lychrel += 1 } ;
});
say $num-of-lychrel;
{{< /highlight >}}

Ruby
{{< highlight go  "linenos=inline">}}
def is_palin(num)
  puts "Checking to see if #{num}"
  if num.to_s.reverse == num.to_s
    puts "#{num} is a palindrome"
    1
  end
  0
end

def reverse_num(num)
  num.to_s.reverse.to_i
end

num_of_lychrel = 0
count = 0
iterator = 0
num = -1
while iterator <= 10_000
  count = 0
  num = iterator
  palin = 0
  while count <= 50
    reversed_num = reverse_num(num)
    sum_num = reversed_num + num
    if is_palin(num) || is_palin(sum_num)
      palin = 1
      break
    end
    count += 1
  end
  if palin == 1
    iterator += 1
  else
    num_of_lychrel += 1
    iterator += 1
    palin = 0
  end
end
puts num_of_lychrel
{{< /highlight >}}
