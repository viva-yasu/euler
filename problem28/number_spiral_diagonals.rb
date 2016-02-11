=begin
Problem 28 「螺旋状に並んだ数の対角線」
1から初めて右方向に進み時計回りに数字を増やしていき, 5×5の螺旋が以下のように生成される:

21	22	23	24	25
20	7	8	9	10
19	6	1	2	11
18	5	4	3	12
17	16	15	14	13
両対角線上の数字の合計は101であることが確かめられる.

1001×1001の螺旋を同じ方法で生成したとき, 対角線上の数字の和はいくつか?
=end

module NumberSpiralDiagonals
  def self.start
    diagonal = [1]
    (1..500).each do |n|
      step = n * 2
      4.times do
        diagonal << diagonal[-1] + step
      end
    end
    p diagonal.inject(:+)
  end
end

NumberSpiralDiagonals.start
