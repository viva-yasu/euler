=begin
Problem 30 「各桁の5乗」
驚くべきことに, 各桁を4乗した数の和が元の数と一致する数は3つしかない.

1634 = 14 + 64 + 34 + 44
8208 = 84 + 24 + 04 + 84
9474 = 94 + 44 + 74 + 44
ただし, 1=14は含まないものとする. この数たちの和は 1634 + 8208 + 9474 = 19316 である.

各桁を5乗した数の和が元の数と一致するような数の総和を求めよ.
=end

module 	DigitFifthPowers
  def self.start
    match = []
    (2..354294).each do |n|
      a = n.to_s.split('').map(&:to_i)
      tmp = []
      a.each do |i|
        tmp << i**5
      end
      match << n if n == tmp.inject(:+)
    end
    puts match.inject(:+)
  end
end

DigitFifthPowers.start
