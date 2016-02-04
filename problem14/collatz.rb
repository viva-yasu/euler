module Collatz
  def self.start
    len = []

    1.upto(999999) do |i|
      len << sequence(i).size
    end
    puts len.index(len.max) + 1
  end

  def self.sequence(n)
    sq = [n]
    begin
      n = n.even? ? (n / 2) : (3 * n + 1)
      sq << n
    end until n == 1
    sq
  end
end

Collatz.start
