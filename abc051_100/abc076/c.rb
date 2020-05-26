s_dash = gets.chomp.chars
t = gets.chomp.chars

n = s_dash.length
m = t.length

# ずらしていって一致する部分を見つける
# 一致したらそれ+?を0埋めの文字をansに入れる
# ansを昇順にして一番最初のもの
ans = []

(n - m + 1).times do |i|
  tmp = s_dash[i,m]

  flag = true
  m.times do |j|
    next if tmp[j] == '?'
    flag = false if tmp[j] != t[j]
  end

  if flag
    char = ''
    char += s_dash[0..i-1].join.gsub('?', 'a') if i > 0
    char += t.join
    char += s_dash[i+m..n-1].join.gsub('?', 'a') if i+m < n
    ans << char
  end
end

puts ans.empty? ? 'UNRESTORABLE' : ans.sort[0]
