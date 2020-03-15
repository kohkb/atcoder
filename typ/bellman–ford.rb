V, E = gets.chomp.split.map(&:to_i)

@edges = []

E.times do
  @edges << gets.chomp.split.map(&:to_i)
end

# 距離を保存する
d = Array.new(V, Float::INFINITY)
# 1を始点とする
d[0] = 0

while true do
  update = false
  # 辺の数だけループ
  @edges.each do |e|
    from = e[0]
    to = e[1]
    cost = e[2]

    next if d[from-1] == Float::INFINITY

    if d[to - 1] > d[from - 1] + cost
      d[to - 1] = d[from - 1] + cost
      update = true
    end
  end

  break unless update
end

p d
