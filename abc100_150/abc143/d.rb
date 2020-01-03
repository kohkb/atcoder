n = gets.to_i
l = gets.chop.split.map(&:to_i)

l.sort!
ans = 0

0.upto(n-3) do |i|
  (i+1).upto(n-2) do |j|
     a_b = l[i] + l[j]
     idx = l.bsearch_index { |x| a_b <= x }

     p idx

    if idx.nil? # nilだと全部が対象！！！
      ans += n-j-1
    else # nilでない場合、
      ans += idx-j-1
    end
  end
end

p ans