=begin
Problem 9 「特別なピタゴラス数」

ピタゴラス数(ピタゴラスの定理を満たす自然数)とは a < b < c で以下の式を満たす数の組である.

a2 + b2 = c2
例えば, 32 + 42 = 9 + 16 = 25 = 52 である.

a + b + c = 1000 となるピタゴラスの三つ組が一つだけ存在する.
これらの積 abc を計算しなさい.
=end

module Pythagorean
  def self.start
    result = 0
    200.upto(1000) do |i|
      300.upto(1000) do |j|
        400.upto(1000) do |k|
          if pythagorean?(i, j, k) && this_condition?(i, j, k)
            result = i * j * k
          end
        end
      end
    end
    puts result
  end

  def self.pythagorean?(a, b, c)
    a < b && b < c && a**2 + b**2 == c**2
  end

  def self.this_condition?(a, b, c)
    a + b + c == 1000
  end
end

Pythagorean.start