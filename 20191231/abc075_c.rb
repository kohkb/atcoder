n, m = gets.chop.split.map(&:to_i)
l = Array.new


m.times do |i|
  l << gets.chop.split.map(&:to_i)
end

p l



m.times do |i|
  tmp = l

  p tmp
  tmp.delete_at(i)


  # p tmp
end