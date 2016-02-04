=begin
Problem 23 「非過剰数和」
完全数とは, その数の真の約数の和がそれ自身と一致する数のことである. たとえば, 28の真の約数の和は, 1 + 2 + 4 + 7 + 14 = 28 であるので, 28は完全数である.

真の約数の和がその数よりも少ないものを不足数といい, 真の約数の和がその数よりも大きいものを過剰数と呼ぶ.

12は, 1 + 2 + 3 + 4 + 6 = 16 となるので, 最小の過剰数である. よって2つの過剰数の和で書ける最少の数は24である. 数学的な解析により, 28123より大きい任意の整数は2つの過剰数の和で書けることが知られている. 2つの過剰数の和で表せない最大の数がこの上限よりも小さいことは分かっているのだが, この上限を減らすことが出来ていない.

2つの過剰数の和で書き表せない正の整数の総和を求めよ.
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

  def abundant?
    _self = self

    return false if _self < 1

    l = _self.divisor_list.inject(:+) - _self
    l > _self
  end
end

module NonAbundantSums
  def self.start
    ans = (0..28123).to_a
    a = ans.select{|x| x.abundant?}
    b = Array.new(a)
    a.each do |i|
      b.each do |j|
        break if i + j > 28123
        ans[i + j] = 0
      end
      b.shift
    end

    p ans.inject(:+)
  end
end

NonAbundantSums.start