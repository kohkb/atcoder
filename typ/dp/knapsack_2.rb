H, N = gets.chomp.split.map(&:to_i)

ab = []
N.times do
  ab << gets.chomp.split.map(&:to_i)
end

dp = Array.new(H+1, Float::INFINITY)
dp[0] = 0

ab.sort!{ |a, b| a[0] <=> b[0]}
# O(NH)
# 各HPに対してダメージコストでeachを回す
# dp[h] h減らすまでのコストの最小値

1.upto(H) do |hp|
  ab.each do |damage, cost|
    tmp_cost = damage >= hp ? cost : dp[hp-damage] + cost
    # minよりif文のほうが断然早い
    dp[hp] = tmp_cost if dp[hp] > tmp_cost
  end
end

p dp.last