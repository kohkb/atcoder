n,d,k = gets.chomp.split.map(&:to_i)
lr = []
st = []

d.times { lr << gets.chomp.split.map(&:to_i)}
k.times { st << gets.chomp.split.map(&:to_i)}

ans = Hash.new(0)

def min(a, b)
  a < b ? a : b
end

def max(a, b)
  a > b ? a : b
end



k.times do |i|
  # すでに答えがわかっていれば飛ばす
  next unless ans[i] == 0

  d.times do |j|
    l = lr[j][0]
    r = lr[j][1]

    if st[i][0] < st[i][1]
      if l <= st[i][0] && st[i][0] <= r
        st[i][0] = min(r, st[i][1])

        ans[i] = j + 1 if st[i][0] >= st[i][1]
      end
    elsif st[i][0] > st[i][1]

      if l <= st[i][0] && st[i][0] <= r
        st[i][0] = max(l, st[i][1])
        ans[i] = j + 1 if st[i][0] <= st[i][1]
      end

    end
  end
end

ans.each do |k, v|
  p v
end