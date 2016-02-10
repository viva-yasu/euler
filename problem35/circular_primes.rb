=begin
Problem 35 「巡回素数」
197は巡回素数と呼ばれる. 桁を回転させたときに得られる数 197, 971, 719 が全て素数だからである.

100未満には巡回素数が13個ある: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, および97である.

100万未満の巡回素数はいくつあるか?
=end

require 'prime'

module CircularPrimes
  def self.start
    circular_primes = []
    target_numbers = (2..1000000).to_a
    target_numbers.each do |n|
      digits = n.to_s.size
      patterns = n.to_s.split('').permutation(digits).to_a
      match = 0
      patterns.each do |i|
        j = i.join.to_i
        break unless j.prime?
        match += 1 if j.prime?
      end
      circular_primes << n if digits == match
    end
    puts circular_primes.size
  end
end
CircularPrimes.start