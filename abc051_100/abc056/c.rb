X = gets.chomp.to_i

left = 0
right = 10**9

def eq(mid)
  mid * (mid+1)/2
end

prev = 10**9
mid = (left + right)/2


while 1
  mid = (left + right)/2
  break if prev == mid

  if eq(mid) > X
    right = mid
  else
    left = mid
  end

  prev = mid

end

if eq(mid) < X
  p mid + 1
else
  p mid
end

