N = gets.chomp.to_i


def dfs(char, last_char)
  return puts char if char.length == N

  'a'.upto(last_char) do |c|
    # aa -> aaa aab
    # ab -> aba abb abcのように 一つ前の文字の最後の文字の次の文字までしかでない
    next_last_char = c == last_char ? last_char.next : last_char
    dfs(char+c, next_last_char)
  end
end


dfs('', 'a')

