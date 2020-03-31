x = gets.chomp
n = x.length

s_cnt = 0

st_cnt = 0

n.times do |i|
  if x[i] == 'S'
    s_cnt += 1
    next
  end

  if s_cnt > 0
    st_cnt += 1
    s_cnt -= 1
  end
end

puts n - st_cnt * 2