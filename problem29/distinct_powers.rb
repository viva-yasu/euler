module DistinctPowers
  def self.start
    results = []
    (2..100).each do |a|
      (2..100).each do |b|
        results << a**b
      end
    end
    puts results.uniq!.size
  end
end
DistinctPowers.start