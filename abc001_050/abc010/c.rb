txa,tya,txb,tyb,T,V = gets.chomp.split.map(&:to_i)
n = gets.chomp.to_i

max_l = T * V
flag = 0

n.times do
  x, y = gets.chomp.split.map(&:to_i)
  l = Math.sqrt((x-txa)**2 + (y-tya)**2) +  Math.sqrt((x-txb)**2 + (y-tyb)**2)

  flag = 1 if l <= max_l
end

if flag == 1
  puts 'YES'
else
  puts 'NO'
end