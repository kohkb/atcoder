N = gets.chomp.to_i

ans = 0

ab_cnt = 0
tail_a_cnt = 0
head_b_cnt = 0

N.times do |i|
  s = gets.chomp

  ans += s.scan('AB').length

  if s[0] == 'B' && s[-1] == 'A'
    ab_cnt += 1
  elsif s[0] == 'B'
    head_b_cnt += 1
  elsif s[-1] == 'A'
    tail_a_cnt += 1
  end
end

# abは足してもabなので残り1つになるまで答えにたす
# p ab_cnt
# p tail_a_cnt
# p head_b_cnt

if ab_cnt > 0
  # 残り1つになるまで足す
  ans += ab_cnt-1

  # aかbがあればそれに置き換えられるので足す
  ans += 1 if tail_a_cnt > 0 || head_b_cnt > 0
end

ans += [head_b_cnt,tail_a_cnt].min

p ans
