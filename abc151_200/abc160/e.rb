class BinaryHeap
  attr_reader :size

  def initialize
    @heap = []
    @size = 0
  end

  def add(n)
    i = @size
    while i > 0 do
      parent_index = (i - 1) / 2
      break if n < @heap[parent_index]

      @heap[i] = @heap[parent_index]
      i = parent_index
    end

    @heap[i] = n
    @size += 1
  end

  def pop
    return if @size <= 0
    min_n = @heap[0]
    @size -= 1
    n = @heap[@size]
    i = 0
    while i * 2 + 1 < @size do
      child_index1 = i * 2 + 1
      child_index2 = i * 2 + 2
      if child_index2 < @size && @heap[child_index2] >= @heap[child_index1]
        child_index1 = child_index2
      end
      break if @heap[child_index1] < n

      @heap[i] = @heap[child_index1]
      i = child_index1
    end
    @heap[i] = n
    min_n
  end

  def min; @heap[0] end
  def values; @heap.first(@size) end
  def inspect; "Heap: #{values}" end
end

arr = [3, 1, 4, 2 ,8 ,5, 6]

bh = BinaryHeap.new

arr.each do |val|
  bh.add(val)
end






x, y,a,b,c = gets.chomp.split.map(&:to_i)
p = gets.chomp.split.map(&:to_i)
q = gets.chomp.split.map(&:to_i)
r = gets.chomp.split.map(&:to_i)

p_bh = BinaryHeap.new
q_bh = BinaryHeap.new
r_bh = BinaryHeap.new

p.each do |val|
  p_bh.add(val)
end

q.each do |val|
  q_bh.add(val)
end

r.each do |val|
  r_bh.add(val)
end

while 1



end

tmp = []