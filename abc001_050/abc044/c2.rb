N, A = gets.chomp.split.map(&:to_i)
x = gets.chomp.split.map(&:to_i)

# dp[i][j][k]
# i個の中からj個を選んで合計がkの個数
dp = Array.new(N+1).map{Array.new(N+1).map{Array.new(N*50+1, 0)}}

dp[0][0][0] = 1

1.upto(N) do |i|
  # 0個選んだ場合は合計0のなので1
  dp[i][0][0] = 1

  # 最大でi個まで選ぶ
  1.upto(i) do |j|
    1.upto(N*50) do |k|

      if x[i-1] > k
        dp[i][j][k] = dp[i-1][j][k]
      else # x[i-1] <= k
        dp[i][j][k] = dp[i-1][j][k] + dp[i-1][j-1][k-x[i-1]]
      end
    end
  end
end

puts (1..N).map{ |j| dp[N][j][j*A] }.inject(:+)
