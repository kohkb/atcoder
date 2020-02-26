n  = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

inf = 10**7

dp = Array.new(n, inf)
dp[0] = 0
dp[1] = (a[1] - a[0]).abs

def min(a,b)
  a < b ? a : b
end

2.upto(n-1) do |i|
  dp[i] = min(dp[i-1] + (a[i]-a[i-1]).abs, dp[i-2] + (a[i]-a[i-2]).abs)
end

p dp.last
