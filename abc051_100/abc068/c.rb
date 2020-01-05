N, M = gets.chop.split.map(&:to_i)

graph = Hash.new{ |h, k| h[k] = [] }

M.times do
  from, to = gets.chop.split.map(&:to_i)
  graph[from] << to
  graph[to] << from
end

graph[N].each do |i|
  if graph[i].include?(1)
    puts 'POSSIBLE'
    exit
  end
end

puts 'IMPOSSIBLE'