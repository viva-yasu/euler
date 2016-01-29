=begin
10未満の自然数のうち, 3 もしくは 5 の倍数になっているものは 3, 5, 6, 9 の4つがあり, これらの合計は 23 になる.

同じようにして, 1000 未満の 3 か 5 の倍数になっている数字の合計を求めよ.
=end

module Multiples
  def self.multiples_3_or_5 i
    num = 1
    sum = 0
    while num < i
      sum += num if num.modulo(3).zero? || num.modulo(5).zero?
      num += 1
    end
    puts sum
  end
end

Multiples.multiples_3_or_5 1000