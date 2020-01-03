n, m = gets.chop.split.map(&:to_i)

max_a = m/n

ans = 1

max_a.times do |i|

  num = max_a - i

  if m % num == 0
    ans = num
    break
  end
end

p ans


# ポイント
# 答えになりうる数字を逆算する　最高がa1と気づく
# a1は最大でもM/Nにしかなりえないことに気づく
# その中で公約数1~M/N内のあるiになるには、M自体がiを約数に保つ必要がある。
# あとは大きいほうから見ていって見つかったらbreakする