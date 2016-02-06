module LatticePaths
  def self.start(n, r)
    puts combination(n, r)
  end

  def self.combination(n, r)
    factorial(n) / (factorial(r) * factorial(n - r))
  end

  def self.factorial(i)
    (1..i).inject(1,:*)
  end
end

LatticePaths.start(40, 20)