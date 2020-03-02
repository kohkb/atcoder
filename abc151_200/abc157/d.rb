n,m,k = gets.chomp.split.map(&:to_i)

h = Hash.new(0)
bl = Hash.new(0)


class UnionFind
  attr_accessor :parent, :size

  def initialize(n)
    @parent = Array.new(n, &:itself)
    @size = []
    n.times do |i|
      @size[i] = 1
    end
  end

  def unite(x,y)
    x,y = root(x),root(y)
    return if x==y

    x,y = y,x if @size[x] < @size[y]
    @size[x] += @size[y]
    @parent[y] = x
  end

  def same_group?(x, y)
    root(x) == root(y)
  end

  def root(x)
    return x if @parent[x] == x

    @parent[x] = root(@parent[x])
  end

  # グループ数
  def count_group
    # 値と根が一致するものの数がグループ数
    @parent.map.with_index.count{ |n, i| n == i }
    # @parent.map.with_index.count(&:==)
  end

  # 特定のグループに所属する要素数
  def size(x)
    return @size[root(x)]
  end
end

uf = UnionFind.new(n)

m.times do |i|
  a, b = gets.chomp.split.map(&:to_i)
  # 友達の数をカウント
  h[a-1] += 1
  h[b-1] += 1
  unless uf.same_group?(a-1, b-1)
    uf.unite(a-1,b-1)
  end
end

k.times do |i|
  c, d = gets.chomp.split.map(&:to_i)

  if uf.same_group?(c-1, d-1)
    bl[c-1] += 1
    bl[d-1] += 1
  end
end

n.times do |i|
  puts uf.size(i) - h[i] - 1 - bl[i]
end

