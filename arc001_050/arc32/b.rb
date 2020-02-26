# まとめるクエリと判定クエリがある
# ランク 木の高さ
# 根はparent[x] = x
# 例題:https://atc001.contest.atcoder.jp/tasks/unionfind_a
class UnionFind
  def initialize(size)
    @rank = Array.new(size, 0)
    @parent = Array.new(size, &:itself)
  end

  def unite(x, y)
    x = root(x)
    y = root(y)

    return if x == y
    if @rank[x] > @rank[y]
      @parent[y] = x
    else
      @parent[x] = y
      # xとyのランクが同じ場合は結合したあとランクは1つ増える
      @rank[y] += 1 if @rank[x] == @rank[y]
    end
  end

  def same_group?(x, y)
    root(x) == root(y)
  end

  def root(x)
    return x if @parent[x] == x

    @parent[x] = root(@parent[x])
  end

  def size
    # 値と根が一致するものの数がグループ数
    @parent.map.with_index.count{ |n, i| n == i }
    # @parent.map.with_index.count(&:==)
  end
end

n,m = gets.chomp.split.map(&:to_i)
uf = UnionFind.new(n)

m.times do
  a, b = gets.chomp.split.map(&:to_i)
  uf.unite(a-1, b-1)
end

p uf.size-1