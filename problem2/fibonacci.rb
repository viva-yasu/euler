=begin
Problem 2 「偶数のフィボナッチ数」

フィボナッチ数列の項は前の2つの項の和である. 最初の2項を 1, 2 とすれば, 最初の10項は以下の通りである.

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
数列の項の値が400万以下の, 偶数値の項の総和を求めよ.
=end

module Fibonacci
  def self.start
    nums = [1, 2]

    while nums[-2] + nums[-1] < 4000000
      nums.push(nums[-2] + nums[-1])
    end

    puts sum_even(nums)
  end

  def self.sum_even(target_arr)
    target_arr.select!(&:even?)
    target_arr.inject(:+)
  end
end

Fibonacci.start
