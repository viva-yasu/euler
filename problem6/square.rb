module Square

  def self.start
    puts square_of_sum_1_to_100 - sum_of_square_1_to_100
  end

  def self.sum_of_square_1_to_100
    sum = 0
    1.upto(100) do |n|
      sum += n ** 2
    end
    sum
  end

  def self.square_of_sum_1_to_100
    sum = 0
    1.upto(100) do |n|
      sum += n
    end
    sum ** 2
  end
end

Square.start