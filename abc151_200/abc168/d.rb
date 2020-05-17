N,M = gets.chomp.split.map(&:to_i)

graph = Hash.new{ |h,k| h[k] = []}

M.times do |i|
  a, b = gets.chomp.split.map(&:to_i)
  graph[a] << b
  graph[b] << a
end

visited = Hash.new(false)
visited[1] = true

queue = [1]

ans = Hash.new(0)

until queue.empty?
  point = queue.shift

  graph[point].each do |v|
    next if visited[v]
    ans[v] = point
    visited[v] = true
    queue << v
  end
end

1.upto(N) do |i|
  if visited[i] == false
    puts 'No'
    exit
  end
end



puts 'Yes'
2.upto(N) do |i|
  puts ans[i]
end


