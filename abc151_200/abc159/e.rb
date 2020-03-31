h,w,k =  gets.chomp.split.map(&:to_i)

cnt = 0

h.times do |i|
  tmp = gets.chomp
  cnt += tmp.count('1')
end

if k >= cnt
  puts 0
  exit
end

cnt += 1 if cnt.odd?

ans = 0
while true
  cnt /= 2
  ans += 1

  if k >= cnt
    puts ans
    exit
  end
end