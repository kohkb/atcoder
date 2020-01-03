n, k = gets.chop.split.map{ |x| x.to_i}

a = gets.chop.split.map{ |x| x.to_i}

h = Hash.new(0)

n.times do |i|
  h[a[i]] += 1
end

arr = h.to_a.sort_by!{|x| x[1]}.reverse!

if arr.size <= k
  p 0
else


  k.times do |i|

  end
  # 取り除いた行（種類）
  tmp = 0
  # 取り除いた数
  ans = 0

  arr.each do |val|
    tmp += 1
    ans += val[1]
    break if arr.size - tmp == k
  end
  p ans
end