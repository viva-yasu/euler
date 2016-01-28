module Fibonacci
  def self.fibonacci
    nums = [1, 2]
    while nums[-2] + nums[-1] < 4000000
      nums.push(nums[-2] + nums[-1])
    end

    sum_even(nums)
  end

  def self.sum_even(target_arr)
    sum = 0

    target_arr.select! { |n| n.even? }
    target_arr.each { |n| sum += n }
    puts sum
  end
end

Fibonacci.fibonacci