n, x, y = gets.chomp.split.map(&:to_i)


# 各点からの最短距離を求める
graph = Hash.new{ |h,k| h[k] = []}
# graph = Array.new(n+1){Array.new}

1.upto(n) do |i|
  graph[i] << i+1 unless i == n
  graph[i] << i-1 unless i == 1
end

graph[x] << y
graph[y] << x



# ans = Hash.new(0)
# arrayなら0を気にしなくて良い
ans = Array.new(n,0)

1.upto(n) do |i|
  # visited = Hash.new(false)

  # queueに距離を持たず、それ用の配列を用意する
  # これにvisitedの役割も持たせている
  dist = Array.new(n+1, -1)

  dist[i] = 0
  queue = [i]

  while queue.size > 0
    v = queue.shift

    graph[v].each do |nv|
      next unless dist[nv] == -1
      dist[nv] = dist[v] + 1
      queue << nv
      ans[dist[nv]] += 1
    end
  end
end


1.upto(n-1) do |i|
  puts ans[i] / 2
end
