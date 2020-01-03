N, W = gets.chop.split.map(&:to_i)
dp = Array.new(N+1).map{Array.new(W+1, 0)}

N.times do |i|
  w_i, v_i = gets.chop.split.map(&:to_i)
  1.upto(W) do |w|
    if w - w_i >= 0
      dp[i+1][w] = [ dp[i][w-w_i] + v_i, dp[i][w] ].max
    else
      dp[i+1][w] = dp[i][w]
    end
  end
end

p dp[N][W]