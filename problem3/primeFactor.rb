module PrimeFactory
  def self.prime_factor(n)
    prime = 2
    result = []

    loop do
      break if n < prime

      while n.modulo(prime).zero?
        n = n / prime
        result.push(prime)
      end

      prime = next_prime(prime)
    end
    result
  end

  def self.next_prime(prime)
    _next = prime + 1

    loop do
      return _next if prime?(_next)

      _next += 1
    end
  end

  def self.prime?(n)
    2.upto(n-1) do |i|
      return false if n.modulo(i).zero?
    end

    true
  end
end

primes = PrimeFactory.prime_factor(600851475143)
p primes.last