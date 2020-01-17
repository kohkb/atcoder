N = int(input())

I = 1000002
s = [0]* I


for _ in range(N):
    a, b = map(int,input().split())

    s[a] += 1
    s[b+1] -= 1

for i in range(1, I):
    s[i] += s[i-1]

print(max(s))
