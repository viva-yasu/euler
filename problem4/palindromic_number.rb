module Palindrome
  def self.start
    products = []
    999.downto(100) do |i|
      999.downto(100) do |j|
        product = i * j
        products << product if palindrome? product
      end
    end
    p products.max == 906609
  end

  def self.palindrome? a
    a.to_s == a.to_s.reverse
  end
end

Palindrome.start