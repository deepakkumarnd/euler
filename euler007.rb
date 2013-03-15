#!/usr/bin/env ruby

class Integer
  def prime?
    prime = true
    half = self / 2
    for i in (2..half)
      if (self % i) == 0
        prime = false
        break
      end
    end
    prime
  end
end

def nth_prime_number(n)
  num = 2
  n.times do
    while(!num.prime?) do
      num += 1
    end
    num += 1
  end
  (num - 1)
end

puts nth_prime_number(10001)
