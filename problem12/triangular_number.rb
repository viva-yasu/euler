=begin
Problem 12 「高度整除三角数」

三角数の数列は自然数の和で表わされ, 7番目の三角数は 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28 である. 三角数の最初の10項は:
1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
となる.

最初の7項について, その約数を列挙すると, 以下のとおり.

 1: 1
 3: 1,3
 6: 1,2,3,6
10: 1,2,5,10
15: 1,3,5,15
21: 1,3,7,21
28: 1,2,4,7,14,28

これから, 7番目の三角数である28は, 5個より多く約数をもつ最初の三角数であることが分かる.

では, 500個より多く約数をもつ最初の三角数はいくつか.
=end

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