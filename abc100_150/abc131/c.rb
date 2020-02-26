A, B, C, D = gets.chomp.split.map(&:to_i)

def gcd(a, b)
  a, b = b, a if a < b
  return a if b == 0
  _mod = a.modulo(b)
  if _mod == 0
    b
  else
    gcd(b, _mod)
  end
end

def lcm(a, b)
  a * b / gcd(a, b)
end


# A以下のCの約数の個数
A_1 = A - 1

a_c_cnt = A_1/C
a_d_cnt = A_1/D
a_cd_cnt = A_1/lcm(C,D)

a_cnt = A_1 - a_c_cnt - a_d_cnt + a_cd_cnt

b_c_cnt = B/C
b_d_cnt = B/D
b_cd_cnt = B/lcm(C,D)

b_cnt = B - b_c_cnt - b_d_cnt + b_cd_cnt


p b_cnt - a_cnt
