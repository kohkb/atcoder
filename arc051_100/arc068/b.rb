n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

ans = a.uniq.count
puts ans.odd? ? ans : ans - 1
