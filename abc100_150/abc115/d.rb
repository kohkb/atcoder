N, X = gets.chomp.split.map(&:to_i)

# aを厚さ　pをパティの数とする
@a = []
@p = []

0.upto(N) do |i|
  @a << 2**(i+2) - 3
  @p << 2**(i+1) - 1
end

# レベルnバーガーの左からx番目までのパティの数を出す
def f(n,x)
  # nが0までいったときに返す値を用意する
  if n == 0
    if x <= 0
      0
    else
      1
    end
  elsif x == @a[n-1] + 2
    # どっちでも良い
    # f(n-1,n-1) + 1
    @p[n-1] + 1
  elsif x < @a[n-1] + 2
    f(n-1,x-1)
  else
    @p[n-1] + 1 + f(n-1, x-2-@a[n-1])
  end
end

puts f(N,X)
