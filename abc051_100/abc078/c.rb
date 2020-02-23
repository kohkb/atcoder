n, m = gets.chomp.split.map(&:to_i)
p 2**m * (1900 * m + 100 * (n - m))