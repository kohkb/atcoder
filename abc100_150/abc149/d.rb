n, k = gets.chomp.split.map(&:to_i)
R, S, P = gets.chomp.split.map(&:to_i)
T = gets.chomp.chars

ans = 0

j_map = {
  'r' => P,
  's' => R,
  'p' => S
}
n.times do |i|
  if i < k || T[i] != T[i - k]
    ans += j_map[T[i]]
  else
    T[i] = ''
  end
end

p ans
