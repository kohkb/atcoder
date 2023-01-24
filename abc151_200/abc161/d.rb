K = gets.chomp.to_i

#0から10^5までの数を全てチェック？いやだめだどれくらい大きくなるかわからない → 一応3^dみたいなので予想はつく

# ルンルン数全列挙を考える K個までなら10^5でいける

queue = [1,2,3,4,5,6,7,8,9]

K.times do |i|
  $num = queue.shift

  queue.push($num*10 + $num % 10 - 1 ) unless $num % 10 == 0
  queue.push($num*10 + $num % 10)
  queue.push($num*10 + $num % 10 + 1 ) unless $num % 10 == 9
end

p $num
