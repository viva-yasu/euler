=begin
Problem 37 「切り詰め可能素数」
3797は面白い性質を持っている. まずそれ自身が素数であり, 左から右に桁を除いたときに全て素数になっている (3797, 797, 97, 7). 同様に右から左に桁を除いたときも全て素数である (3797, 379, 37, 3).

右から切り詰めても左から切り詰めても素数になるような素数は11個しかない. 総和を求めよ.

注: 2, 3, 5, 7を切り詰め可能な素数とは考えない.
=end

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
