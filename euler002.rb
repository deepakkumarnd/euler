#!/usr/bin/env ruby
# sum of fibonacci even numbers whose value less than 4000000

def next_fibonacci(curr, prev)
  (curr + prev)
end

def sum_of_even_fibonacci(limit = 4000000)
  sum  = 0 
  curr = 0
  prev = 1

  loop do
    num  = next_fibonacci(curr, prev)
    prev = curr
    curr = num
    next if num.odd?
    break if num > limit
    sum += num
  end
  sum
end

puts sum_of_even_fibonacci
