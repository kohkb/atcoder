n = gets.chomp.to_i
cnt = 100
ng = []
3.times { ng << gets.chomp.to_i}


if ng.include?(n) || ng.include?(0)
  puts 'NO'
  exit
end

while 1
  if cnt == 0
    puts 'NO'
    exit
  end

  if !ng.include?(n - 3)
    n -= 3
  elsif !ng.include?(n - 2)
    n -= 2
  elsif !ng.include?(n-1)
    n -= 1
  else
    puts 'NO'
    exit
  end

  cnt -= 1

  if n <= 0
    puts 'YES'
    exit
  end
end



