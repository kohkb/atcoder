N = gets.chomp.to_i
a, b = gets.chomp.split.map(&:to_i)

# 未訪問なら-1 訪問済みならそこまでの経路数
visited = Hash.new(-1)
cnt = Array.new(N+1, 0)

graph = Hash.new{|h,k| h[k] = []}

M = gets.chomp.to_i
M.times do |i|
  x,y = gets.chomp.split.map(&:to_i)
  graph[x] << y
  graph[y] << x
end

queue = []
queue << [a, 0]
visited[a] = 0
cnt[a] = 1

until queue.empty?
  v, d = queue.shift

  graph[v].each do |iv|
    cnt[iv] += cnt[v] if d+1 == visited[iv] || visited[iv] == -1
    next if visited[iv] != -1

    visited[iv] = d+1

    queue << [iv, d+1]
  end
end

p cnt[b] % (10**9 + 7)
