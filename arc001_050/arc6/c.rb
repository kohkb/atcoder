# 順番は固定
# 一番絶対値が近いものに乗せるで良さそう（証明なし）
N = gets.chomp.to_i

# arrは更新していっていい 一番上のものしか関係しない
arr = []


N.times do |i|
  w = gets.chomp.to_i

  diff = 10**9
  idx = -1

  arr.size.times do |j|
    next if w > arr[j]

    if diff > arr[j] - w
      diff = arr[j] - w
      idx = j
    end
  end

  if idx != -1
    arr[idx] = w
  else
    arr << w
  end
end

p arr.size

