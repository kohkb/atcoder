MOD = 10**9 + 7

def factorial(num)
  (1..num).inject (1){ |sum, x| (x*sum) % MOD }
end

n, m = gets.chop.split.map(&:to_i)


if (n - m).abs >= 2
  p 0
elsif (n-m).abs == 1
  # 最後もMODで割る
  p factorial(n)*factorial(m) % MOD
else
  p 2*factorial(n)*factorial(m) % MOD
end

