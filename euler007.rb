#!/usr/bin/env ruby

class Integer
  def prime?
    raise StandardError if self < 2
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

def nth_prime_number(n)
  num = 3
  (n).times do
    while(!num.prime?) do
      num += 2
    end
    num += 2
  end
  (num - 2)
end

puts nth_prime_number(10001)
