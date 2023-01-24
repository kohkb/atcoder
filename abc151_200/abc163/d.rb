n,k =  gets.chomp.split.map(&:to_i)

ans = 0
arr = [*0..n]
ruiseki = [0]

(n+1).times do |i|
  next if i == 0
  ruiseki << ruiseki[i-1] + arr[i]
end

# k~nの場合を足していく
k.upto(n) do |i|
  min_sum = ruiseki[i-1]
  max_sum = ruiseki[n] - ruiseki[n-i]

  ans += max_sum - min_sum + 1
end

# n+1個選ぶときの1個は足す
p ans % (10**9 + 7) + 1