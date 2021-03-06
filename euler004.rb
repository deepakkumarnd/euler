#!/usr/bin/env ruby

class Integer
  def factorize
    return [] if self == 0
    i = 2
    low  = [1]
    high = [self]
    while(i < high.last.abs)
      if (self % i) == 0
        low<< i
        high<< (self / i)
      end
      i += 1 
    end
    (low + high.sort).uniq
  end
end

class Array
  def self.define_component method_name
    define_method method_name do
      factor_size = method_name.to_s.split('_')[1].to_i
      self.select { |item| item.to_s.length == factor_size }
    end
  end
  
  def method_missing method_name, *args
    super unless method_name.to_s =~ /^get_[[:digit:]]_digit_factors$/
    Array.define_component method_name
    self.send(method_name) if self.respond_to? method_name
  end
end

def biggest_6_digit_palindrome_with_two_3_digit_factors? num
  yes = false
  factors = num.factorize
  three_digit_factors = factors.get_3_digit_factors
  three_digit_factors.each do |n1|
    three_digit_factors.each do |n2|
      if (n1 != n2) && ((n1 * n2) == num)
        yes = true
        break
      end
    end
    break if yes
  end
  yes
end

base_num = 999

(100..999).each do |i|
  palindrome = "#{base_num}#{base_num.to_s.reverse}".to_i
  if biggest_6_digit_palindrome_with_two_3_digit_factors?(palindrome)
    puts "Palindrome #{palindrome} is the highest 6 digit palindrome with two three digit factors."
    break
  end
  base_num -= 1
end
