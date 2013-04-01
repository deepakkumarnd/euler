#!/usr/bin/env ruby

class Integer
  def prime?
    raise StandardError if self < 1
    prime = (self % 2 == 0) ? false : true
    if prime
      i = 3
      limit = self / i
      while(i <= limit)
        if (self % i) == 0
          prime = false
          break
        end
        i += 2
        limit = self/i
      end
    end
    prime
  end
end

sum = 2
for i in (3..2000000).step(2) do
  sum += i  if i.prime?
end

puts "Sum of primes below 2000000 is #{sum}"
