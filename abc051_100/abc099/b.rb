a, b = gets.chomp.split.map(&:to_i)

h = 0

(b - a - 1).downto(1) do |i|
  h += i
end

p h - a
