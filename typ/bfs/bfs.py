from collections import deque
# R*Cの迷路を想定
R, C = map(int, input().split())

c = []
for i in range(R):
    c.append(list(input()))

# 配列の中の要素をタプルにして初期化する
step = 0
queue = deque([(0, 0, step)])

# 訪問済みを1、未訪問を0とする
visited = [ [0]*C for _ in range(R)]
visited[0][0] = 1

while queue:
    x,y,cnt = queue.popleft()

    for dx, dy in (x+1, y), (x-1, y), (x, y+1), (x, y-1):
        if dx < 0 or dy < 0 or dx > R or dy > C:
            break

        if c[dx][dy] == '#' or visited[dx][dy] == 1:
            continue

        visited[dx][dy] = 1
        queue.append((dx,dy,cnt+1))


        print(queue)
