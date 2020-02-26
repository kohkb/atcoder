N = gets.to_i

l = [1]
# 6と9でありえる値をlに格納する
tmp_six = 6
while 100000 > tmp_six
    l << tmp_six
  tmp_six *= 6
end

tmp_nine = 9
while 100000 > tmp_nine
  l << tmp_nine
  tmp_nine *= 9
end


dp = [ N ] * ( N  + 1 )
dp[0] = 0

(N + 1).times do |i|
  l.each do |val|
    dp[i] = [dp[i], dp[i-val] + 1].min if i >= val
  end
end

p dp[N]