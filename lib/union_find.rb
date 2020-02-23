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

  # グループ数
  def size
    # 値と根が一致するものの数がグループ数
    @parent.map.with_index.count{ |n, i| n == i }
    # @parent.map.with_index.count(&:==)
  end

  # 特定のグループに所属する要素数
  def count(x)
    x = root(x)
    @parent.count(x)
  end
end

N, Q = gets.chomp.split.map(&:to_i)
# 0~N-1のN個なのでNで良い
uf = UnionFind.new(N)

Q.times do
  p ,a, b = gets.chomp.split.map(&:to_i)

  if p == 0
    uf.unite(a, b)
  else
    puts uf.same_group?(a, b) ? 'Yes' : 'No'
  end
end
