module Pandigital
  def self.start
    pandigital = []
    (1..10000).each do |i|
      (1..10000).each do |j|
        product = i * j
        break if over9?(i, j, product)
        pandigital << product if (i.to_s + j.to_s + product.to_s).chars.delete_if {|n| n == "0"}.uniq.size == 9
      end
    end
    pandigital.uniq.inject(:+)
  end

  def self.over9?(i, j, p)
    (i.to_s + j.to_s + p.to_s).length > 9
  end
end

puts Pandigital.start