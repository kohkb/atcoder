t = gets.chomp.to_i
n = gets.chomp.to_i

a = gets.chomp.split.map(&:to_i)
m = gets.chomp.to_i
b = gets.chomp.split.map(&:to_i)


if m > n
  puts 'no'
  exit
end


a_idx = 0
b_idx = 0


sold_cnt = 0

while 1
  # たこやき取得
  takoyaki = a[a_idx]

  if b[b_idx] >= a[a_idx] && takoyaki + t >= b[b_idx]
    sold_cnt += 1
    b_idx += 1
  end

  # 次のたこやきに進む
  a_idx += 1

  break if a_idx == a.length
  break if b_idx == b.length
end

if sold_cnt == b.size
  puts 'yes'
else
  puts 'no'
end