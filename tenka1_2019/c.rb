# 完成形から考える問題
# 初期状態を忘れないようにする
n = gets.chomp.to_i
s = gets.chomp.chars

black_count = 0

s.each { |val| black_count += 1 if val == "#" }

left_b = 0
left_w = 0
right_b = black_count
right_w = n - black_count

ans = left_b + right_w

n.times do |i|
  if s[i] == '#'
    left_b += 1
    right_b -= 1
  else
    left_w += 1
    right_w -= 1
  end
  ans = [ans, left_b + right_w].min
end

p ans


