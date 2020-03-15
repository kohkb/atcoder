V, E = gets.chomp.split.map(&:to_i)

dp = Array.new(V).map{Array.new(V, Float::INFINITY)}

E.times do
  from, to, cost = gets.chomp.split.map(&:to_i)
  dp[from-1][to-1] = cost
  dp[to-1][from-1] = cost
end

def min(a,b)
  a < b ? a : b
end

V.times do |i|
  V.times do |j|
    V.times do |k|
      dp[i][j] = min(dp[i][j], dp[i][k] + dp[k][j])
    end
  end
end

p dp[0][1]
p dp[0][2]
p dp[0][3]
p dp[0][4]

# 5 6
# 1 2 2
# 1 3 1
# 1 4 4
# 2 4 1
# 3 5 5
# 4 5 1
# [0, 2, 1, 3, 4]