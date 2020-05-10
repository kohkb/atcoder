n,m,x = gets.chomp.split.map(&:to_i)

ca = []

ans = 10**9

n.times do |i|
  ca << gets.chomp.split.map(&:to_i)
end

def min(a,b)
  a < b ? a : b
end


[0,1].repeated_permutation(n) do |bits|

  tmp = Array.new(m,0)
  c_tmp = 0
  n.times do |i|
    next if bits[i] == 0

    1.upto(m) do |j|
      tmp[j-1] += ca[i][j]

    end
    c_tmp += ca[i][0]
  end

  # p bits
  #
  # p tmp
  #
  # p c_tmp

  flag = true

  m.times do |k|
    flag = false if tmp[k] < x
  end

  next if flag == false

  ans = min(c_tmp,ans)

  # p bits
  # p tmp
  # p c_tmp
end





if ans == 10**9
  puts -1
else
  puts ans
end
