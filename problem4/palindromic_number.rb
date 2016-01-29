module Palindrome
  def self.start
    products = []
    999.downto(100) do |i|
      999.downto(100) do |j|
        product = i * j
        products << product if product.to_s == product.to_s.reverse
      end
    end
    p products.max
  end
end

Palindrome.start