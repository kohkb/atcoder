# bit全探索を使う問題
# https://atcoder.jp/contests/abc147/tasks/abc147_c
n = gets.chomp.to_i

ll = []

n.times do
  a = gets.chomp.to_i
  row = []
  a.times do
    row << gets.chomp.split.map(&:to_i)
  end
  ll << row
end

ans = 0
[0, 1].repeated_permutation(n) do |bits|
  break_flag = 0
  n.times do |i|
    # 不親切な人の場合はスキップ
    next if bits[i] == 0

    # 正直者な場合 証言を確認する
    ll[i].each do |syougen|
      # p "#{bits}のとき"
      # p syougen
      # 証言とbitsの仮定に矛盾があればこれは無効
      if bits[syougen[0] -1 ] != syougen[1]
        break_flag = 1
      end
    end
  end

  # break_flag == 0であれば証言に矛盾は生じていないのでそれが答え
  ans = [ans, bits.inject(:+)].max if break_flag == 0
end

puts ans