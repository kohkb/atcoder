N = gets.chomp.to_i
p = gets.chomp.split.map(&:to_i)

ans = 0
prev = false

N.times do |i|
  if p[i] == i + 1
    if prev
      prev = false
      next
    end

    ans += 1
    prev = true
  else
    prev = false
  end
end

p ans
