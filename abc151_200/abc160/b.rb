x = gets.chomp.to_i

ans = 0

n = x / 500
ans += n * 1000

x %= 500

  m = x/5
ans += m * 5


puts ans
