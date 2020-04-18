h, w = gets.chomp.split.map(&:to_i)

ans = h * w

def min(a,b)
  a < b ? a : b
end

def max(a,b)
  a > b ? a : b
end



# 分割は4パターンということがわかる
# HとWの大きさを入れ替えたりすれば同じやりかたでいけるので2パターンについて考察する
# たて3つに分割した場合でも、T時の場合でも一番上の大きさは同じ

#  たて
1.upto(h-1) do |i|
  s_1 = i * w
  s_2 = (w/2) * (h-i)
  s_3 = (w-w/2)* (h-i)

  s = [s_1, s_2, s_3]
  ans = min(s.max - s.min, ans)


  s_2 = ((h-i)/2) * w
  s_3 = ((h-i)-(h-i)/2)* w

  s = [s_1, s_2, s_3]


  ans = min(s.max - s.min, ans)
end



# よこ
1.upto(w-1) do |j|
  s_1 = h * j
  s_2 = (h/2) * (w-j)
  s_3 = (h-h/2)* (w-j)

  s = [s_1, s_2, s_3]
  ans = min(s.max - s.min, ans)

  s_2 = ((w-j)/2) * h
  s_3 = ((w-j)-(w-j)/2)* h

  s = [s_1, s_2, s_3]


  ans = min(s.max - s.min, ans)
end

p ans