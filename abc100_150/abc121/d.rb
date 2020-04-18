a, b = gets.chomp.split.map(&:to_i)

def xor_sum(x)
  if x.odd?
    if ((x + 1)/2).odd?
      1
    else
      0
    end
  else
    if ((x + 1)/2).odd?
      1 ^ x
    else
      x
    end
  end
end

puts xor_sum(a-1) ^ xor_sum(b)