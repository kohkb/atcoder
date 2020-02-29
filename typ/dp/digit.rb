S = gets.chomp
K = gets.chomp.to_i
N = S.length

# dp[ 決めた桁数 ][ 未満フラグ ] := 総数
# 3次元配列といっても配列の中の配列の中の配列
# 0になってくれる
# 桁DP
# https://atcoder.jp/contests/abc154/tasks/abc154_e
dp = Array.new(N+1).map{Array.new(4).map{Array.new(2,0)}}


dp[0][0][0] = 1


N.times do |i| # 1桁ずつ増やしていく
  (K+1).times do |j| # 非ゼロの数を試していく
    2.times do |k| # 一致する場合とそうでない場合
      # 現在の桁の数字
      nd = S[i].to_i
      # 0~9までの数字を試す
      10.times do |d|
        # これから更新するi,j,kを設定する
        ni = i + 1 # 桁は次の桁
        nj = j # 非0の数は増えるか不明（0なら増えない）
        nk = k

        nj += 1 if d != 0 # 0でないなら増える
        next if nj > K # 非0の数がKを超えてしまったら飛ばす


        if k == 0 # 一致している場合
          next if d > nd # 現在の桁の数字を超えてしまっていたらアウト
          nk = 1 if d < nd # dがnd未満の場合は一致はなくなるので1にする
          # つまり、nd = dとなっている場合のみk==0が保持されるということ
        end

        dp[ni][nj][nk] += dp[i][j][k]
      end
    end
  end
end

p dp[N][K][1] + dp[N][K][0]