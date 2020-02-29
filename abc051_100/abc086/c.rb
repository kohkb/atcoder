n = gets.chomp.to_i

tmp_x, tmp_y = 0, 0
tmp_t = 0

flag = true

n.times do
  reachble = true
  t,x, y = gets.chomp.split.map(&:to_i)

  reachble = false unless t % 2 == (x + y) % 2
  reachble = false unless (tmp_x - x ).abs+ (tmp_y - y).abs <= t-tmp_t

  tmp_t = t
  tmp_x, tmp_y = x, y


  flag = false unless reachble
end

puts flag ? 'Yes' : 'No'



