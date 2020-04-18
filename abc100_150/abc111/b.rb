n = gets.chomp.to_i

n.upto(999) do |i|
  s = i.to_s

  if s[0] == s[1] && s[1] == s[2] && s[2] == s[0]
    puts i
    exit
  end
end