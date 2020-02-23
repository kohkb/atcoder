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
    x == get_parent(x)
    y == get_parent(y)

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
    get_parent(x) == get_parent(y)
  end

  private

  def get_parent(x)
    if @parent[x] == x
      x
    else
      @parent[x] = get_parent(@parent[x])
    end
  end
end

N, Q = gets.chomp.split.map(&:to_i)
# 0があるのでサイズはN+1にしておく
uf = UnionFind.new(N+1)
queries = []

Q.times do
  queries << gets.chomp.split.map(&:to_i)
end

queries.each do |p ,a, b|
  if p == 0
    uf.unite(a, b)
  else
    puts uf.same_group?(a, b) ? 'Yes' : 'No'
  end
end
