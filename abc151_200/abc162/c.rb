K = gets.chomp.to_i
ans = 0

1.upto(K) do |i|
  1.upto(K) do |j|
    1.upto(K) do |k|
      ans += i.gcd(j).gcd(k)
    end
  end
end

p ans
