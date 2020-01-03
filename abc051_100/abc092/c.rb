n =gets.chop.to_i
a = gets.chop.split.map(&:to_i)



sum_a = a[0].abs

(n-1).times do |i|
  sum_a += (a[i]-a[i+1]).abs
end

sum_a += a.last.abs

n.times do |i|
  if i == 0
    p sum_a - a[0].abs - (a[1]-a[0]).abs + a[1].abs
  elsif i == n-1
    p sum_a - (a[i]-a[i-1]).abs - a[i].abs + a[i-1].abs
  else
    p sum_a - (a[i-1]-a[i]).abs - (a[i]-a[i+1]).abs + (a[i-1]-a[i+1]).abs
  end
end
