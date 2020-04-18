b = gets.chomp.split.map(&:to_i)
n = gets.chomp.to_i
a = []

n.times do
  a << gets.chomp.to_i
end


@h = Hash.new(0)

10.times do |i|
  @h[b[i].to_s] = i
end

# p @h


def compare(a,b)
  # aのほうが小さければtrueを返す
  # a < b ? true : false

  a_length = a.length
  b_length = b.length


  return a_length < b_length  unless a_length == b_length

  b_length.times do |i|
    next if a[i] == b[i]

    return @h[a[i]] < @h[b[i]]
  end

  # 数字が全く同じ場合はtrueで返しておく
  return true
end

n.times do |i|
  n.times do |j|
    if compare(a[i].to_s,a[j].to_s)
      a[j], a[i] = a[i], a[j]
    end
  end
end

a.each do |val|
  p val
end


