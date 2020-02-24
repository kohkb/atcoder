a, b, x = gets.chomp.split.map(&:to_i)

def func(a,b, n)
  a * n + b * n.to_s.length
end

left = 0
right = 10**9
mid = 10**9


if x > func(a, b, mid)
  p mid
  exit
end

while right - left > 0
  num = func(a, b, mid)

  if x > num
    left = mid
  elsif x < num
    right = mid
  else
    break
  end

  prev = mid
  mid = (right + left)/2
  break if prev == mid
end

p mid