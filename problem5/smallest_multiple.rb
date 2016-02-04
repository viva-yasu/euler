=begin
Problem 5 「最小の倍数」

2520 は 1 から 10 の数字の全ての整数で割り切れる数字であり, そのような数字の中では最小の値である.

では, 1 から 20 までの整数全てで割り切れる数字の中で最小の正の数はいくらになるか.
=end
require 'rational'

module SmallestMultiple
  def self.start
    num = (1..20).inject(1) { |result, n| result.lcm(n) }
    puts num
  end
end

SmallestMultiple.start
