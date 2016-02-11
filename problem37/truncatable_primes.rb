require 'prime'
module Truncatable
  def self.start
    truncatable_primes = []

    n = 11
    while true
      str = n.to_s
      i = 0
      while i < str.length
        break unless str[i..-1].to_i.prime?
        if i != 0
          break unless str[0..-1 - i].to_i.prime?
        end
        i += 1
      end
      truncatable_primes << n if i == str.length
      break if truncatable_primes.length == 11
      n = next_prime(n)
    end

    puts truncatable_primes.inject(:+)
  end

  def self.next_prime(n)
    loop do
      n += 2
      return n if n.prime?
    end
  end
end

Truncatable.start
