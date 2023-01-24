N, A = gets.chomp.split.map(&:to_i)
x = gets.chomp.split.map(&:to_i)

x = x.map{ |e| e - A }

h = Hash.new(0)
h[0] = 1

hh = h.dup

N.times do |i|
  # その時点でありえる全hに対して、足す
  h.each do |k,v|
    # hでeachしている最中に中身を増やすのはよくないので dupにする
    # その数値になる通りになる
    hh[x[i]+k] += v
  end
  h = hh.dup
end
p h[0] - 1
