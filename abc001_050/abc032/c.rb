N, K = gets.chomp.split.map(&:to_i)

s = []

flag = false
N.times do |i|
  tmp = gets.chomp.to_i
  flag = true if tmp == 0
  s << tmp
end

if flag
  puts N
  exit
end

left = 0
right = 0
num = 1
ans = 0

def max(a,b)
  a > b ? a : b
end

while 1
  num *= s[right]

  while num > K && right-1 >= left
    num /= s[left]
    left += 1
  end

  ans = max(ans, right-left + 1) if num <= K

  right += 1

  break if right == N
end

p ans
