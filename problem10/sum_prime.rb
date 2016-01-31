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
    sum = 0
    arr.each do |i|
      sum += i
    end
    sum
  end
end

SumPrime.start