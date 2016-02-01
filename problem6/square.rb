=begin
Problem 6 「二乗和の差」

最初の10個の自然数について, その二乗の和は,

1**2 + 2**2 + ... + 10**2 = 385
最初の10個の自然数について, その和の二乗は,

(1 + 2 + ... + 10)**2 = 3025
これらの数の差は 3025 - 385 = 2640 となる.

同様にして, 最初の100個の自然数について二乗の和と和の二乗の差を求めよ.
=end

module Square

  def self.start
    puts square_of_sum(1, 100) - sum_of_square(1, 100)
  end

  def self.sum_of_square(a, b)
    (a..b).inject(0) do |sum, n|
      sum += n ** 2
    end
  end

  def self.square_of_sum(a, b)
    sum = (a + b) * (b - a + 1) / 2
    sum ** 2
  end
end

Square.start