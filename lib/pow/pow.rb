# 2^nをO(logn)で求められる。10^9 + 7でも割ってくれる
a, b = gets.chomp.split.map(&:to_i)
MOD = 10**9 + 7

def pow(base, exp)
  return 1 if exp == 1

  res = 1

  until exp == 1 do
    # 奇数のときはそのままかける
    if exp.odd?
      res *= base
      exp -= 1
    end

    exp /= 2
    base = base * base % MOD
  end

  res * base % MOD
end

p pow(a, b)
