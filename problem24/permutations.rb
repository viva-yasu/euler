module Permutations
  def self.start
    p = (0..9).to_a.permutation(10).to_a
    puts p[999999].join
  end
end

Permutations.start