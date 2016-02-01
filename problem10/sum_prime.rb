=begin
Problem 10 「素数の和」

10以下の素数の和は 2 + 3 + 5 + 7 = 17 である.
200万以下の全ての素数の和を求めよ.
=end

require 'prime'

module SumPrime
  def self.start
    primes = get_primes(2000000)
    result = sum_arr(primes)
    puts result
  end

  def self.get_primes(to)
    primes = [2]
    3.step(to, 2) do |n|
      if n.prime?
        primes << n
      end
    end
    primes
  end

  def self.sum_arr(arr)
    arr.inject(:+)
  end
end

SumPrime.start