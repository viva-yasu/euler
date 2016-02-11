=begin
Problem 40 「チャンパーノウン定数」
正の整数を順に連結して得られる以下の10進の無理数を考える:

0.123456789101112131415161718192021...
小数第12位は1である.

dnで小数第n位の数を表す. d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000 を求めよ.
=end

module ChampernownesConstant
  def self.start
    target_num = make_irrational_decimal(185185)
    digit = '1'
    fractional_part = []
    while fractional_part.size != 7
      fractional_part << search_fractional_part(digit, target_num)
      digit << '0'
    end
    puts fractional_part.inject(1, :*)
  end

  def self.make_irrational_decimal(n)
    irrational = "0."
    (1..n).each do |i|
      irrational << i.to_s
    end
    irrational
  end

  def self.search_fractional_part(digit, irrational)
    irrational[digit.to_i + 1].to_i
  end
end

ChampernownesConstant.start
