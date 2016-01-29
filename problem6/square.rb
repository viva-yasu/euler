=begin
Problem 6 「二乗和の差」

最初の10個の自然数について, その二乗の和は,

12 + 22 + ... + 102 = 385
最初の10個の自然数について, その和の二乗は,

(1 + 2 + ... + 10)2 = 3025
これらの数の差は 3025 - 385 = 2640 となる.

同様にして, 最初の100個の自然数について二乗の和と和の二乗の差を求めよ.
=end

module Square

  def self.start
    puts square_of_sum_1_to_100 - sum_of_square_1_to_100
  end

  def self.sum_of_square_1_to_100
    sum = 0
    1.upto(100) do |n|
      sum += n ** 2
    end
    sum
  end

  def self.square_of_sum_1_to_100
    sum = 0
    1.upto(100) do |n|
      sum += n
    end
    sum ** 2
  end
end

Square.start