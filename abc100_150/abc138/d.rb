N, Q = gets.chomp.split.map(&:to_i)

$tree = Array.new(N+1).map{Array.new}

(N-1).times do |i|
  a, b = gets.chomp.split.map(&:to_i)
  # a < bなので片方だけ入れる→駄目だった　どっちが親かはいってないため
  $tree[a-1] << b-1
  $tree[b-1] << a-1
end

$visited = Hash.new(false)


# クエリに順番は関係ない
# 1つの頂点に対してのものはまとめて良い
$ans = Array.new(N, 0)

Q.times do |i|
  p, x = gets.chomp.split.map(&:to_i)
  $ans[p-1] += x
end

# stack level too deepのエラーが出る
# def dfs(vertex)
#   return if $tree[vertex].empty?
#
#   $tree[vertex].each do |v|
#     next if $visited[v] == true
#     $ans[v] = $ans[v] + $ans[vertex]
#     $visited[v] = true
#     dfs(v)
#   end
# end
#
# $visited[0] = true
# dfs(0)

queue = [0]
$visited[0] = true

until queue.empty?
  vertex = queue.shift

  $tree[vertex].each do |v|
    next if $visited[v] == true
    $ans[v] += $ans[vertex]
    $visited[v] = true
    queue.push(v)
  end
end

puts $ans.join(' ')

