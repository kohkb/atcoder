@n, @k = gets.chomp.split.map(&:to_i)
@t = @n.times.map { gets.chomp.split.map(&:to_i)}

# 深さはn
# 各dfsは必ずtrueかfalseを返す
def dfs(val, i)
  # n + 1番目まで来たらそのvalが0かどうかを判定する
  return val.zero? if i == @n

  # 横幅(k)分ループする
  @k.times do |j|
    tmp = val ^ @t[i][j]
    return true if dfs(tmp, i + 1)
  end
  false
end

puts dfs(0, 0) ? 'Found' : 'Nothing'

