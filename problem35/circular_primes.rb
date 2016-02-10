require 'prime'

module CircularPrimes
  def self.start
    circular_primes = []
    target_numbers = (2..1000000).to_a
    target_numbers.each do |n|
      digits = n.to_s.size
      patterns = n.to_s.split('').permutation(digits).to_a
      match = 0
      patterns.each do |i|
        j = i.join.to_i
        break unless j.prime?
        match += 1 if j.prime?
      end
      circular_primes << n if digits == match
    end
    puts circular_primes.size
  end
end
CircularPrimes.start