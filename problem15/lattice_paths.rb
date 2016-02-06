=begin
Problem 15 「格子経路」 †
2×2 のマス目の左上からスタートした場合, 引き返しなしで右下にいくルートは 6 つある.

では, 20×20 のマス目ではいくつのルートがあるか.
=end

module LatticePaths
  def self.start(n, r)
    puts combination(n, r)
  end

  def self.combination(n, r)
    p = 1
    r.times do
      p *= n
      n -= 1
    end
    p / factorial(r)
  end

  def self.factorial(i)
    (1..i).inject(1,:*)
  end
end

LatticePaths.start(40, 20)