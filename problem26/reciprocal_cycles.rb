module ReciprocalCycles
  def self.start
    repetition_num = {}
    (2...1000).each do |i|
      next unless (a = get_cycle_size(i))
      repetition_num[i] = a
    end
    max_num = repetition_num.sort {|a, b| a[1] <=> b[1]}[-1][0]
    puts max_num
  end

  def self.get_cycle_size(i)
    remainder = []
    divided = 1
    loop do
      a = divided % i
      return nil if a.zero?
      if (b = remainder.index(a))
        return remainder.size - b
      end
      remainder << a
      divided = a * 10
    end
  end
end

ReciprocalCycles.start
