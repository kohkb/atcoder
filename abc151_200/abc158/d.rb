s = gets.chomp.chars
# 文字列のままやるとTLE

# headが1のときは順方向とする
head = 1

Q = gets.chomp.to_i

Q.times do |i|
  query = gets.chomp.split

  # 1なら反転
  if query[0] == '1'
    head = head == 0 ? 1 : 0
    next
  end

  if query[1] == '1'
    # 表かつ前ならそのまま足す
    if head == 1
      s.unshift(query[2])
    else
      s.push(query[2])
    end
  else
    if head == 1
      s.push(query[2])
    else
      s.unshift(query[2])
    end
  end
end


if head == 1
  puts s.join
else
  puts s.reverse.join
end
