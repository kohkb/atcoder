n, m = gets.chomp.split.map(&:to_i)

# 初期値0でハッシュ作成
h = Hash.new { |h, k| h[k] = [] }

m.times do
  a, b = gets.chomp.split.map(&:to_i)

  h[a] << b
  h[b] << a
end

1.upto(n) do |i|
  ff = []
  h[i].each do |friend|
    h[friend].each do |friends_friend|
      next if h[i].include?(friends_friend)
      next if ff.include?(friends_friend)
      next if friends_friend == i
      ff << friends_friend
    end
  end

  puts ff.size
end