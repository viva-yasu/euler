=begin
Problem 20 「階乗の数字和」

n × (n - 1) × ... × 3 × 2 × 1 を n! と表す.

例えば, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800 となる.
この数の各桁の合計は 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27 である.
では, 100! の各桁の数字の和を求めよ.
=end

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
