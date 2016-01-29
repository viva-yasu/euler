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