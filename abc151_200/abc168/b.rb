K = gets.chomp.to_i
S = gets.chomp

if S.length <= K
  puts S
else
  puts S[0,K] + '...'
end
