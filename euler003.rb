#!/usr/bin/env ruby
# find the greatest prime factor of the number 600851475143

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

def greatest_prime_factor_of(x)
  ans  = nil
  half = x / 2
  for i in (2..half)
    if (x % i) == 0
      val = x / i
      if val.prime?
        ans = val
        break
      end
    end
  end
  ans
end

puts greatest_prime_factor_of(600851475143)   #13195)
