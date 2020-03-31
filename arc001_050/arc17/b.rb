n,k = gets.chomp.split.map(&:to_i)
a = []
n.times { a << gets.chomp.to_i}

ans = 0
tmp = 0

if k == 1
  puts n
  exit
end

1.upto(n-1) do |i|
  if a[i] > a[i-1]
    tmp += 1
  else
    tmp = 0
  end

  if tmp == k-1
    ans += 1
    tmp -= 1
  end
end

p ans



