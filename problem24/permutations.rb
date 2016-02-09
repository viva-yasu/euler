=begin
Problem 24 「辞書式順列」
順列とはモノの順番付きの並びのことである. たとえば, 3124は数 1, 2, 3, 4 の一つの順列である. すべての順列を数の大小でまたは辞書式に並べたものを辞書順と呼ぶ. 0と1と2の順列を辞書順に並べると

012 021 102 120 201 210
になる.

0,1,2,3,4,5,6,7,8,9からなる順列を辞書式に並べたときの100万番目はいくつか?
=end

module Permutations
  def self.start
    p = (0..9).to_a.permutation(10).to_a
    puts p[999999].join
  end
end

Permutations.start