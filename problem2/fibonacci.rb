module Fibonacci
  def self.start
    nums = [1, 2]
    while nums[-2] + nums[-1] < 4000000
      nums.push(nums[-2] + nums[-1])
    end

     puts sum_even(nums)
  end

  def self.sum_even target_arr
    sum = 0
    target_arr.select!(&:even?)
    target_arr.each { |n| sum += n }
    sum
  end
end

Fibonacci.start