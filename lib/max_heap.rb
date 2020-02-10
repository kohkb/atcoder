class BinaryHeap
  def initialize(array=[])
    @heap = []
    array.each do |element|
      add(element)
    end
  end

  def add(value)
    @heap.push(value)
    up_heap
  end

  def pop
    max_value = @heap[0]
    @heap[0] = @heap.pop
    down_heap
    max_value
  end

  def list
    @heap
  end

  private
  def up_heap
    index = @heap.size - 1

    while index != 0
      if @heap[index] < @heap[parent_index(index)]
      break
      end
      swap(index, parent_index(index))
      index = parent_index(index)
    end
  end

  def down_heap
    index = 0

    while has_child?(index) do
      l = left_child_index(index)
      r = right_child_index(index)

      if @heap[r].nil?
        larger_index = l
      else
        larger_index = ( @heap[l] >= @heap[r]) ? l : r
      end

      break if @heap[index] > @heap[larger_index]

      swap(index, larger_index)
      index = larger_index
    end

  end

  def parent_index(index)
    (index - (index.even? ? 2 : 1) )/2
  end

  def left_child_index(index)
    index * 2 + 1
  end

  def right_child_index(index)
    index * 2 + 2
  end

  def swap(i, j)
    @heap[i], @heap[j] = @heap[j], @heap[i]
  end

  def has_child?(index)
    ((index * 2) + 1) < @heap.size
  end
end

a = [3, 1, 4, 2 ,8 ,5, 6]

bh = BinaryHeap.new(a)


