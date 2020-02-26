def gcd(a, b)
  a, b = b, a if a < b

  while b > 0
    a, b = b, a % b
  end
  a
end

def lcm(a, b)
  a * b / gcd(a, b)
end

a, b = gets.chomp.split.map(&:to_i)

puts "#{a}と#{b}の最小公倍数は#{lcm(a,b)}です"
puts "#{a}と#{b}の最大公約数は#{gcd(a,b)}です"