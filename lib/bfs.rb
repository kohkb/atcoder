# 問題：https://atcoder.jp/contests/abc007/tasks/abc007_3
r, c = gets.chomp.split.map(&:to_i)
sx, sy = gets.chomp.split.map(&:to_i)
gx, gy = gets.chomp.split.map(&:to_i)

ll = []
r.times do
  ll << gets.chomp.chars
end

# 答えを保持
# visitedとまとめても良い
ans = 0
scores = Array.new(r).map { Array.new(c, 0) }
scores[1][1] = 0

# sy, sxが初期値 （添字が1から始まるのでマイナス1をしておく）
# stepはそこまでかかった歩数とする
step = 0
queue = []
queue << [sx - 1, sy - 1, step]

# 探索済みは1、探索前は0とする
visited = Array.new(r).map { Array.new(c, 0) }

until queue.empty?
  x, y, cnt = queue.shift

  [ [x, y + 1], [x, y - 1], [x + 1, y], [x - 1, y]].each do |dx, dy|
    break if (dx < 0) || (dy < 0) || (dx > r) || (dy > c)
    next if (ll[dx][dy] == '#') || (visited[dx][dy] == 1)

    visited[dx][dy] = 1
    queue << [dx, dy, cnt + 1]
    ans = [cnt + 1, ans].max
    scores[dx][dy] = cnt + 1
  end
end

p ans
p scores




