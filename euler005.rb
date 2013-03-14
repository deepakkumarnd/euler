
#!/usr/bin/env ruby

class Integer
  def to_simple_factors
    num = self
    simple_factors = [1]
    (2..num).each do |i|
      while (num%i) == 0
        simple_factors<< i
        num /= i
      end
      i += 1
    end
    simple_factors
  end
end

def get_least_number_divisible_by(range)
  factors = [1]
  range.each do |i|
    simple_factors = i.to_simple_factors
    blacklist = []
    simple_factors.each do |f|
      next if blacklist.include? f
      selected_f1 = factors.select { |j| j==f }
      selected_f2 = simple_factors.select { |j| j==f }
      factors += selected_f2.drop(selected_f1.count) if selected_f1.count < selected_f2.count
      blacklist<< f
    end
  end
  ans = factors.inject(1) { |i, prod| i * prod }
end

puts get_least_number_divisible_by(1..20)
