class Integer
  def factorial
    (1..self).inject(1,:*)
  end
end

module FactorialDigitSum
  def self.start target_number
    factorial = target_number.factorial
    sum_factorial_digit = sum_digit(factorial)
    puts sum_factorial_digit
  end

  def self.sum_digit(n)
    n = n.to_s.split('').map(&:to_i)
    sum = n.inject(:+)
  end
end

FactorialDigitSum.start(100)
