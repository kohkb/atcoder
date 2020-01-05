N, M = gets.chop.split.map(&:to_i)
L = Array.new

M.times do
  L << gets.chop.split.map(&:to_i)
end

ans = 0

M.times do |i|
  # i番目を取り除いた配列を作る
  l = L[0,i] + L[i+1,M-1]

  # i番目を取り除いたときのグラフを作る
  h = Hash.new{ |h, k| h[k] = [] }

  l.each do |from, to|
    h[from] << to
    h[to] << from
  end
  
  visited = {}
  queue = [1]
  until queue.empty?
    vertex = queue.shift

    next unless visited[vertex].nil?
    visited[vertex] = true

    h[vertex].each do |j|
      queue.push(j)
    end
  end

  # すべての頂点に訪れていなかったら橋なので+1
  unless visited.size == N
    ans += 1
  end
end

p ans



