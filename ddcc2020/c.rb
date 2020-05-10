H, W, K = gets.chomp.split.map(&:to_i)
s = []

ans = Array.new(H).map{Array.new(W, 0)}

H.times do
  s << gets.chomp.chars
end

k = 1

head = true


empty_rows = []

H.times do |i|
  # 次の行はflag==falseから始まる
  flag = false
  k += 1 if i != 0

  W.times do |j|
    # 現在の値を代入しつづける
    ans[i][j] = k
    if s[i][j] == '#'
      head = false

      if flag
        # 現在の値をkからk+1に変更
        k += 1
        ans[i][j] = k
      else
        flag = true
      end
    end
  end

  # その行に全く1がなかったときかつすでにk=1以上（すでに出てる）とき
  if flag == false && k >= 2
    W.times do |j|
      ans[i][j] = ans[i-1][j]
    end
    k -= 1
  end


  if flag == false && k == 1 && head == true
    k -= 1
    empty_rows << i
  end
end

empty_rows.reverse.each do |i|
  W.times do |j|
    ans[i][j] = ans[i+1][j]
  end
end

ans.each do |row|
  puts row.join(' ')
end
