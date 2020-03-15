n = gets.chomp.to_i
c = gets.chomp

h = Hash.new(0)

c.each_char do |char|
  h[char] += 1
end

max_cnt = 0
min_cnt = 10**9

h.each do |k, v|
  max_cnt = [max_cnt, v].max
  min_cnt = [min_cnt, v].min
end

if h.to_a.uniq.size == 1
  min_cnt = 0
end

puts max_cnt.to_s + ' ' + min_cnt.to_s