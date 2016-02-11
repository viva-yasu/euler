module NumberSpiralDiagonals
  def self.start
    diagonal = [1]
    (1..500).each do |n|
      step = n * 2
      4.times do
        diagonal << diagonal[-1] + step
      end
    end
    p diagonal.inject(:+)
  end
end

NumberSpiralDiagonals.start
