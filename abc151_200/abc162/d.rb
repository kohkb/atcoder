# r * g * bを計算する
# その中からj-i = k-j を満たすものを引く
# 2j = i + k
n = gets.chomp.to_i
s = gets.chomp.chars
# s = gets.chomp

h = Hash.new(0)

c_map = {
    'R' => 0,
    'G' => 1,
    'B' => 2
}


s.each_char do |c|
  h[c_map[c]] += 1
end

ans = h[0] * h[1] * h[2]

0.upto(n-2) do |i|
  i.upto(n-1) do |j|
    k = 2 * j - i
    next if k >= n

    ans -= 1 if s[i] != s[j] && s[j] != s[k] && s[k] != s[i]
  end
end

p ans