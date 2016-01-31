require 'prime'

class Integer
  def divisor_list
    divisors = [1]
    primes = []
    Prime.prime_division(self).each do |prime|
      prime[1].times { primes << prime[0] }
    end

    1.upto(primes.size) do |i|
      primes.combination(i) do |prime|
        divisors << prime.inject { |a, b| a *= b }
      end
    end

    divisors.uniq!
    divisors.sort!

    return divisors

  rescue ZeroDivisionError
    return
  end
end

module Triangular
  def self.start
    triangular_number = 0
    start_int = 1
    loop do
      sum = sum_arithmetic_progression(start_int)

      divisors = sum.divisor_list

      if divisors.size >= 500
        triangular_number = sum
        break
      end
      start_int += 1
    end
    puts triangular_number
  end

  # 等差数列の合計を求める
  def self.sum_arithmetic_progression(number)
    sum = (number + 1) * number / 2
  end
end

Triangular.start