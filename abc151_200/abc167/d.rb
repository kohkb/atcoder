N, K = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

tele = Hash.new
# 訪れたかどうか
visited =  Hash.new(false)
# 何回目に訪れたか
num = Hash.new(0)


N.times do |i|
  tele[i+1] = a[i]
end


start = 10**10
per = 10**10


cur = 1

point = 0

visited[1] = true
num[1] = 0

1.upto(N) do |i|
  cur = tele[cur]

  if i == K
    puts cur
    exit
  end


  unless visited[cur]
    visited[cur] = true
    num[cur] = i
  else
    per = i - num[cur]
    start = num[cur]
    point = cur
    break
  end

end

m = K-start
step = m % per

(step).times do |i|
  point = tele[point]
end

p point





