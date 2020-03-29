s = gets.chomp.chars

n = s.length
ans = 0
a_cnt = 0
b_flag = false

n.times do |i|
  if s[i] == 'A'
    if b_flag
      a_cnt = 0
    end


    a_cnt += 1
    b_flag = false
  end

  if s[i] == 'B'
    # Bが2連続ならa_cntは0にするC
    if b_flag
      a_cnt = 0
    end

    b_flag = true
  end

  if s[i] == 'C'
    unless b_flag
      a_cnt = 0
      next
    end
    
    ans += a_cnt
    b_flag = false
  end
end

puts ans