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