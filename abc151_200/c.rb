N, M = gets.chop.split.map(&:to_i)
ac = 0
pn = 0

res_ac = Array.new(N,0)

res_pn = Array.new(N,0)

M.times do |i|
  p, s = gets.chop.split

  p = p.to_i

  if s == 'WA' && res_ac[p-1] == 0
    res_pn[p-1] += 1
  end

  if s == 'AC' && res_ac[p-1] == 0
    res_ac[p-1] = 1
    ac += 1
    pn += res_pn[p-1]
  end

end

puts ac
puts pn

