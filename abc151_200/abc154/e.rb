S = gets.chomp.chars
K = gets.chomp.to_i

n = S.length

# DP [i][j][k]
# i桁目まで見たときに、j個の非0があって、k 0-> Nと一致 1-> N以下

dp = Array.new(n+1).map{Array.new(K+1).map{Array.new(2,0)}}

# 0桁目まで見たときはNと一致してるので最後は0
dp[0][0][0] = 1

n.times do |i|
  num = S[i].to_i

  (K+1).times do |j|
    2.times do |k|
      10.times do |d|
        # iは次の桁
        ni = i + 1
        nj = j
        nk = k

        # 非ゼロなら+1
        nj += 1 unless d == 0

        # K個を超えてしまったらnext
        next if nj > K

        # 一致してるとき
        if k == 0
          next if d > num
          nk = 1 if d < num
        end

        dp[ni][nj][nk] += dp[i][j][k]
      end
    end
  end
end

p dp[n][K][0] + dp[n][K][1]

