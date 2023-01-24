require 'prime'
A, B = gets.chomp.split.map(&:to_i)


def gcd(a, b)
  a, b = b, a if a < b

  while b > 0
    a, b = b, a % b
  end
  a
end

g = gcd(A, B)
p 1 + g.prime_division.size
