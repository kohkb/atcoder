S = gets.chomp.chars
n = S.length

MOD = 10**9 + 7
dp = Array.new(n+1).map{Array.new(13,0)}

# 0桁目まで見て余りが0のものは0
dp[0][0] = 1

mul = 1


n.times do |i|
  if S[n-i-1] == '?'
    13.times do |mod|
      10.times do |d|
        dp[i+1][(mod + d*mul) % 13] += dp[i][mod] % MOD
      end
    end
  else
    d = S[n-i-1].to_i
    13.times do |mod|
      dp[i+1][(mod + d*mul) % 13] += dp[i][mod] % MOD
    end
  end
  mul *= 10
  mul %= 13
end


p dp[n][5]
