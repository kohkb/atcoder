n = gets.to_i
ans = Array.new(n+1).map{[0,0,0]}


# i番目にaを選んだときのいままでの合計の最大値をans[i][0]とする

n.times do |i|
  a,b,c = gets.split.map(&:to_i)
  ans[i+1][0] = [ans[i][1], ans[i][2]].max + a
  ans[i+1][1] = [ans[i][0], ans[i][2]].max + b
  ans[i+1][2] = [ans[i][0], ans[i][1]].max + c
end
puts ans