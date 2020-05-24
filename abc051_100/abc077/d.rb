N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i).sort.reverse!
B = gets.chomp.split.map(&:to_i)
C = gets.chomp.split.map(&:to_i).sort!

ans = 0
# Bを中心に二分探索
N.times do |i|
  a_idx =  A.bsearch_index { |x| x < B[i] }
  c_idx =  C.bsearch_index { |x| x > B[i] }

  next if a_idx.nil? || c_idx.nil?

  c_cnt = N - c_idx
  a_cnt = N - a_idx

  ans += c_cnt * a_cnt
end



# Cを基準にして2回二分探索！  -> bを絞ってもそのそれぞれのbに対してaを精査する必要があるので正しくない
# A = gets.chomp.split.map(&:to_i).sort.reverse!
# B = gets.chomp.split.map(&:to_i).sort.reverse!
# C = gets.chomp.split.map(&:to_i).sort!
#
# N.times do |i|
#   b_idx =  B.bsearch_index { |x| x < C[i] }
#
#   puts "c:#{C[i]}"
#
#   next if b_idx.nil?
#   b_cnt = N - b_idx
#   b_num =  B[b_idx]
#
#   p "b_idx:#{b_idx} b_num:#{b_num} b_cnt:#{b_cnt}"
#
#   a_idx = A.bsearch_index { |x| x < b_num }
#   next if a_idx.nil?
#
#   a_cnt = N - a_idx
#   p "a_idx:#{a_idx} a_num:#{A[a_idx]} a_cnt:#{a_cnt}"
#
#
#
#
#   ans += b_cnt * a_cnt
#   p ans
# end

puts ans
