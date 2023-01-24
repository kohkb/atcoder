s = gets.chomp
n = s.length
k = gets.chomp.to_i


chars = []


s.length.times do |i|
  chars << s[i..n-1]
end

chars.sort!
idx = 0

checked = Hash.new(false)

chars.each do |char|
  char.length.times do |i|
    if checked[char[0..i]] == false
      checked[char[0..i]] = true
      idx += 1
    end

    if idx == k
      puts char[0..i]
      exit
    end
  end
end
