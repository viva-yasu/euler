=begin
Problem 16 「べき乗の数字和」

215 = 32768 であり, これの数字和 ( 各桁の和 ) は 3 + 2 + 7 + 6 + 8 = 26 となる.
同様にして, 21000 の数字和を求めよ.
=end

module PowerDigit
  def self.start
    num = 2**1000
    num_arr = num.to_s.split('').map(&:to_i)
    puts sum_arr(num_arr)
  end

  def self.sum_arr(arr)
    sum = 0
    arr.each do |n|
      sum += n
    end
    sum
  end
end

PowerDigit.start
