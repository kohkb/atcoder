A, B, C, K= gets.chomp.split.map(&:to_i)

if A >= K
  puts K
  exit
end

if A + B >= K
  puts A
  exit
end


c = K - A - B

puts A - c


