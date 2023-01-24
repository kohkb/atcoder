n = gets.chomp.to_i

arr = Array.new(10).map{Array.new(10, 0)}

1.upto(n) do |i|
  s = i.to_s

  arr[s[0].to_i][s[-1].to_i] += 1
end

ans = 0
1.upto(9) do |i|
  1.upto(9) do |j|
    ans += arr[i][j] * arr[j][i]
  end
end

p ans
