# 再帰をつかった2^n手法
# O(N)の解法もある
n = gets.chomp.to_i
$h = Hash.new{ |h,k| h[k] = []}

# 社員番号を入れると給料を返す
def dfs(i)
  return 1 if $h[i].empty?

  max_num = 1
  min_num = 10**9


  $h[i].each do |child|
    max_num = [dfs(child), max_num].max
    min_num = [dfs(child), min_num].min
  end

  return max_num + min_num + 1
end

(n-1).times do |i|
  b = gets.chomp.to_i
  $h[b] << i + 2
end

p dfs(1)