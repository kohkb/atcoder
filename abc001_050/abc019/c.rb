n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

b = []

a.each do |val|
  while 1
    break unless val % 2 == 0
    val /= 2
  end
  b << val
end

p b.uniq.length