d, g = gets.chomp.split.map(&:to_i)
p = []
c = []

d.times do |i|
  p[i], c[i] = gets.chomp.split.map(&:to_i)
end

ans = 10**10

[0, 1].repeated_permutation(d) do |bits|
  count = 0
  point = 0
  max_i = -1

  d.times do |i|
    if bits[i] == 1
      count += p[i]
      point += 100 * (i+1) * p[i] + c[i]

      if point >= g
        ans = [ans, count].min
      end
    else
      max_i = [max_i,i].max
    end
  end

  gap = g - point
  next if gap <= 0

  rest_cnt = (gap.to_f / ( 100 * (max_i + 1) )).ceil
  next if rest_cnt > p[max_i] - 1

  ans = [ans, count + rest_cnt].min
end

p ans
