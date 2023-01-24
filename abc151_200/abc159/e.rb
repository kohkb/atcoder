H, W, K =  gets.chomp.split.map(&:to_i)

s = []
H.times do
  row = gets.chomp.chars.map(&:to_i)
  s << row
end

ans = 10**10

[0, 1].repeated_permutation(H-1) do |bits|
  # p bits
  # 1のときは斬る

  pieces = []
  tmp_row = []
  tmp_row << s[0]

  (H-1).times do |i|
    if bits[i] == 1
      pieces << tmp_row
      tmp_row = []
      tmp_row << s[i+1]
    else
      tmp_row << s[i+1]
    end

    # 最後のときは足しておく
    if H-2 == i
      pieces << tmp_row
    end
  end

  tmp_ans = 0

  splits = Hash.new(false)

  pieces.each do |piece|
    tmp_count = 0
    p_h = piece.size


    W.times do |j|
      tmp_count = 0 if splits[j+1] == true
      # 今の実装だと、すでにたてに切れ目をいれてても次のpieceに引き継いでいない
      # p j
      # その列におけるたての合計
      tmp_col_cnt = 0
      p_h.times do |i|
        tmp_col_cnt += piece[i][j]
      end
      # p tmp_count
      if tmp_col_cnt + tmp_count > K
        if j == 0
          # 1列目でKを超えてしまったら分割できないので無限に大きくする
          tmp_ans += 10**10
        end

        splits[j] = true

        tmp_ans += 1
        # 答えにプラスして、今回ののみ記録する
        tmp_count = tmp_col_cnt

        # p "Kを超えたときの一時的な答えは#{tmp_ans}"
      else
        tmp_count = tmp_col_cnt + tmp_count
      end
    end
  end

  # ビットの数
  # p bits.count(1)
  # p tmp_ans

  ans = [ans, tmp_ans + bits.count(1)].min
end

puts ans


