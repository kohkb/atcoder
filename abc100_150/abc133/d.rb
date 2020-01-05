N = gets.chop.to_i
A = gets.chop.split.map(&:to_i)

ans = []
ans[0] = 0

N.times do |i|
  if i.even?
    ans[0] += A[i]
  else
    ans[0] -= A[i]
  end
end

N.times do |i|
  next if i == 0
  ans[i] =  2*A[i-1] - ans[i-1]
end

puts ans