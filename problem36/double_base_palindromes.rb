=begin
Problem 36 「二種類の基数による回文数」
585 = 10010010012 (2進) は10進でも2進でも回文数である.

100万未満で10進でも2進でも回文数になるような数の総和を求めよ.

(注: 先頭に0を含めて回文にすることは許されない.)
=end

module DoubleBasePalindromes
  def self.start
    double_base_palindromes = []
    (1..1000000).each do |n|
      double_base_palindromes << n if n.to_s == n.to_s.reverse && n.to_s(2) == n.to_s(2).reverse
    end
    puts double_base_palindromes.inject(:+)
  end
end
DoubleBasePalindromes.start