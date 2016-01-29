=begin
Problem 7 「10001番目の素数」

素数を小さい方から6つ並べると 2, 3, 5, 7, 11, 13 であり, 6番目の素数は 13 である.

10 001 番目の素数を求めよ.
=end

require 'prime'

module SearchPrime
  def self.start
    primes = []
    target_number = 1
    loop do
      if target_number.prime?
        primes << target_number
      end
      break if primes.size == 10001
      target_number += 1
    end
    puts primes[-1]
  end
end

SearchPrime.start