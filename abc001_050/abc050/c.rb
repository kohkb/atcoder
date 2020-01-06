N = gets.chop.to_i
a = gets.chop.split.map(&:to_i)
MOD = 10**9 + 7

if N==1
  ans = a[0] == 0 ? 1 : 0
  p ans
  exit
end

if N % 2 == 0
  start = 1
  tmp_sum = 1
else
  start = 2
  tmp_sum = 2
end

(N/2-1).times do
  start += 2
  tmp_sum += start
end

unless tmp_sum*2 == a.inject(:+)
  p 0
  exit
end

ans = 1

(N/2).times do
  ans = ans * 2 % MOD
end
p ans