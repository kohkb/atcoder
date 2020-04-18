n,m = gets.chomp.split.map(&:to_i)
@graph = Hash.new{ |h,k| h[k] = []}

m.times do
  u, v = gets.chomp.split.map(&:to_i)
  @graph[u] << v
  @graph[v] << u
end

def dfs(vertex, prev)
  # すでに訪れている頂点に来てしまったfalseを返す
  return false if @visited[vertex]

  @visited[vertex] = true

  @graph[vertex].each do |x|
    next if prev == x

    return false if dfs(x, vertex) == false
  end

  return true
end


ans = 0
@visited = Hash.new(false)

1.upto(n) do |i|
  next if @visited[i]

  ans += 1 if dfs(i, 0)
end

puts ans