N = gets.chomp.to_i


k = 0
# 答え出力用の順序は持っておく
l = []

# 幅優先探索用
tree = Hash.new{ |h, k| h[k] = []}

# 答えを持つ
ans = Hash.new{ |h,k| h[k] = {} }


(N-1).times do |i|
  a, b = gets.chomp.split.map(&:to_i)
  tree[a] << b
  l << [a, b]
  ans[a][b] = 1
end

# キュー
queue = []

queue << [1, 0]


until queue.empty?
  edge, point = queue.shift

  base_point = 1


  i = 0
  tree[edge].each do |e|
    i += 1 if base_point + i == point
    ans[edge][e] = base_point + i

    i += 1

    k =  i > k ? i : k

    queue << [e, ans[edge][e]]
  end
end

p k
l.each do |a, b|
  p ans[a][b]
end







