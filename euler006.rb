#!/usr/bin/env ruby

def sum_of_squares(n)
  # sum of square are calculated using the following famous
  # relation
  # n^3 - (n-1)^3 = 3(n^2) - 3*n + 1
  #
  # 1^3 - 0^3     = 3(1^2) - 3*1 + 1
  # 2^3 - 1^3     = 3(2^2) - 3*2 + 1
  # ...
  # n^3 - (n-1)^3 = 3(n^2) - 3*n + 1
  # add the above show equations to come up with the equation
  # s(n^2) = (n/6)(2(n^2)+3n+1)

  (n*((2*n*n)+(3*n)+1))/6
end

def square_of_sums(n)
  # s(n) = (n(n+1)/2)^2
  s = (n*(n+1))/2
  s*s
end

puts (square_of_sums(100) - sum_of_squares(100))
