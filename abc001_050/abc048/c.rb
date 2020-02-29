N, x = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

ans = 0

1.upto(N-1) do |i|
  tmp = a[i-1] + a[i]
  if tmp > x
    ans += [tmp - x, a[i]].min
    a[i] -= [tmp - x, a[i]].min
  end

  # 右を減らしても、まだ大きい場合は左を減らす
  if a[i-1] > x
    ans += a[i-1] - x
    a[i-1] -= a[i-1] - x
  end
end

p ans
