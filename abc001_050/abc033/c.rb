# 入力
s = gets.chomp

flag = 0
stack = []
s.each_char do |char|
  if flag == 1
    tmp = char.to_i * stack.pop.to_i
    stack << tmp
    flag = 0
    next
  end

  if char == '*'
    flag = 1
  elsif char != '+'
    stack << char.to_i
  end
end

ans = 0
stack.each do |val|
  ans += 1 unless val == 0
end

p ans
