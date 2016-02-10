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