# まとめるクエリと判定クエリがある
# ランク 木の高さ
# 根はparent[x] = x
# 例題:https://atc001.contest.atcoder.jp/tasks/unionfind_a
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




N,M = gets.chomp.split.map(&:to_i)

uf = UnionFind.new(N)

M.times do |i|
  x, y, z = gets.chomp.split.map(&:to_i)


  uf.unite(x-1,y-1)
end

p uf.count_group


