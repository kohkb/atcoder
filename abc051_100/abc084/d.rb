Q = gets.chomp.to_i
p_length = 100001


# 1~10^5までの素数をbooleanで持つ
# 累積和でそれぞれ何個か調べる
# あとは順番に処理


prime = Array.new(p_length, false)

def fetch_prime_list(max)
  table = Array.new(max + 1,true)
  prime_list = []

  (2..max).each do |num|
    if table[num] == true
      prime_list << num
      k = num * num
      while k <= max
        table[k] = false
        k += num
      end
    end
  end
  return prime_list
end

#配列を返すメソッド
p_arr =  fetch_prime_list(p_length)

p_arr.each do |num|
  prime[num] = true
end

ruiseki = [0]

1.upto(p_length) do |i|
  if i.odd? && prime[i] && prime[(i + 1)/2]
    tmp = 1
  else
    tmp = 0
  end

  ruiseki[i] = ruiseki[i-1] + tmp
end


ans = []

Q.times do |i|
  l, r = gets.chomp.split.map(&:to_i)
  ans << ruiseki[r] - ruiseki[l-1]
end

ans.each do |r|
  puts r
end
