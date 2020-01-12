N,K, M = gets.chop.split.map(&:to_f)

A = gets.chop.split.map(&:to_f)


x = M*N - A.inject(:+)


if x > K
  p -1
elsif x < 0
  p 0
else
  p x.ceil
end