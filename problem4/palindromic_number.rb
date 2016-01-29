=begin
左右どちらから読んでも同じ値になる数を回文数という. 2桁の数の積で表される回文数のうち, 最大のものは 9009 = 91 × 99 である.
では, 3桁の数の積で表される回文数の最大値を求めよ.
=end

module Palindrome
  def self.start
    products = []
    999.downto(100) do |i|
      999.downto(100) do |j|
        product = i * j
        products << product if palindrome? product
      end
    end
    puts products.max
  end

  def self.palindrome? a
    a.to_s == a.to_s.reverse
  end
end

Palindrome.start