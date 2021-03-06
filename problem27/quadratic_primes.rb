=begin
Problem 27 「二次式素数」
オイラーは以下の二次式を考案している:

n2 + n + 41.
この式は, n を0から39までの連続する整数としたときに40個の素数を生成する. しかし, n = 40 のとき 402 + 40 + 41 = 40(40 + 1) + 41 となり41で割り切れる. また, n = 41 のときは 412 + 41 + 41 であり明らかに41で割り切れる.

計算機を用いて, 二次式 n2 - 79n + 1601 という式が発見できた. これは n = 0 から 79 の連続する整数で80個の素数を生成する. 係数の積は, -79 × 1601 で -126479である.

さて, |a| < 1000, |b| < 1000 として以下の二次式を考える (ここで |a| は絶対値): 例えば |11| = 11 |-4| = 4である.

n2 + an + b
n = 0 から始めて連続する整数で素数を生成したときに最長の長さとなる上の二次式の, 係数 a, b の積を答えよ.
=end

require 'prime'
module QuadraticPrimes
  def self.start
    result_a = -1
    result_b = -1
    highest_n = -1
    b_arr = primes
    b_idx = 0
    while b_idx < b_arr.length
      b = b_arr[b_idx]
      a = -999
      while a < 1000
        n = 0
        while true
          fn = n**2 + a * n + b
          unless fn.prime?
            if n > highest_n
              highest_n = n
              result_a = a
              result_b = b
            end
            break
          end
          n += 1
        end
        a += 2
      end
      b_idx += 1
    end

    puts "n = #{highest_n}"
    puts "a = #{result_a}"
    puts "b = #{result_b}"
    puts "a * b = #{result_a * result_b}"
  end

  def self.primes
    arr = []
    Prime.each(1000) { |prime| arr << prime}
    arr
  end
end

QuadraticPrimes.start
