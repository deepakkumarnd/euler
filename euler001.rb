#!/usr/bin/env ruby
# sum of multiples of 3 or 5 below 1000

def sum_of_multiples_of(x, limit)
  last_multiple = last_multiple_of(x, limit)
  n   = last_multiple / x
  sum = (x * n * (n + 1) / 2)
end

def last_multiple_of(x, limit)
  limit -= 1
  while((limit % x) != 0) do limit = limit -1 end
  limit
end

ans = sum_of_multiples_of(3, 1000) + sum_of_multiples_of(5, 1000) - sum_of_multiples_of(15, 1000)
puts ans

