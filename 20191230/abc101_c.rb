n, k = gets.chop.split.map(&:to_i)
x = gets.chop.split.map(&:to_i)


ans = 10**10
(n-k+1).times do |i|
  # 右端からいくパターン 左端からパターンがある
  r = x[i+k-1]
  l = x[i]
  r_dist = (r-l).abs + r.abs
  l_dist = (l-r).abs + l.abs

  ans =[r_dist,l_dist, ans].min
end

p ans

# ポイント
# 並んだK個しかない
# K個を全探索してもO(N)しかない
# その中での処理については両端だけが大事
# 片方のはじにいってからもう片方という考え方をすると、片方までの距離+そっからもう片方までの距離を求めれば良いとわかる
#
# 注意 ansは十分に大きくするか・・ないならその場で代入にしましょう