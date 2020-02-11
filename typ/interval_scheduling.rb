## 区間スケジューリング問題
## https://atcoder.jp/contests/keyence2020/tasks/keyence2020_b
## 終わり時間でソートすれば良い

n = gets.chomp.to_i
ll = []

n.times do
  x, l = gets.chomp.split.map(&:to_i)
  ll << [x - l, x + l]
end

ll.sort_by!{ |x| x[1]}

ans = 1
prev = ll[0][1]

1.upto(n-1) do |i|
  if prev <= ll[i][0]
    ans += 1
    prev = ll[i][1]
  end
end

p ans
