n = gets.chomp.to_i
h = Hash.new{ |h,k| h[k] = []}
s = Hash.new(0)

# 部下ごとの上司を求めていく？
# 1~n番目までの部下リストをつくる
(n-1).times do |i|
  b = gets.chomp.to_i
  h[b] << i + 2
end

n.downto(1) do |i|
  if h[i].empty?
    # 部下がいない場合
    s[i] = 1
  else
    # 部下がいる場合
    min_num = 10**9
    max_num = 1
    h[i].each do |j|
      max_num = [max_num, s[j]].max
      min_num = [min_num, s[j]].min
    end
    s[i] = max_num + min_num + 1
  end
end

p s[1]