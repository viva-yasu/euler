=begin
Problem 48 「自身のべき乗(self powers)」
次の式は, 11 + 22 + 33 + ... + 1010 = 10405071317 である.

では, 11 + 22 + 33 + ... + 10001000 の最後の10桁を求めよ.
=end

module 	SelfPowers
  def self.start(n)
    powers = []
    (1..n).each do |i|
      powers << self_power(i)
    end
    puts last_ten_digits(powers.inject(:+))
  end

  def self.self_power(n)
    n**n
  end

  def self.last_ten_digits(n)
    n.to_s[-10..-1].to_i
  end
end

SelfPowers.start(1000)
