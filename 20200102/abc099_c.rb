N = gets.to_i

# 初期値をNとする。(最大でも1がN個なため)
# 0があるのでN+1をかけてる
dp = [N]*(N+1)
dp[0] = 0


# 6でやったものを、9で上書きしている？minにしているのでどっちでも良いということ？

# ptr 0->n-1
N.times do |ptr|

  # upto9は目安 まあ9上まで試せば良いだろうという感じ
  0.upto(6) do |i|
    hop = 6**i

    # Nをこえたらbreak
    break if ptr+hop > N
    dp[ptr+hop] = [dp[ptr+hop], dp[ptr]+1].min
  end
  1.upto(6) do |i|
    hop = 9**i
    break if ptr+hop > N
    dp[ptr+hop] = [dp[ptr+hop], dp[ptr]+1].min
  end
end

p dp