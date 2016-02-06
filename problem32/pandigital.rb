=begin
Problem 32 「パンデジタル積」 †
すべての桁に 1 から n が一度だけ使われている数をn桁の数がパンデジタル (pandigital) であるということにしよう: 例えば5桁の数 15234 は1から5のパンデジタルである.

7254 は面白い性質を持っている. 39 × 186 = 7254 と書け, 掛けられる数, 掛ける数, 積が1から9のパンデジタルとなる.

掛けられる数/掛ける数/積が1から9のパンデジタルとなるような積の総和を求めよ.

HINT: いくつかの積は, 1通り以上の掛けられる数/掛ける数/積の組み合わせを持つが1回だけ数え上げよ.
=end

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