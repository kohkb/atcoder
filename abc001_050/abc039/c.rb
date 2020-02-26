s = gets.chomp
# 白黒白黒白白黒白黒白黒白 → 'WBWBWWBWBWBW'

h = %w(Do Do Re Re Mi Fa Fa So So La La Si)

# ファファソソララは1つだけ これがファ
part = 'WBWBWB'
fa = s.index(part)

fa %= 12

puts h[5 - fa]



