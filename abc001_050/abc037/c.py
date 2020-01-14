N, K = map(int,input().split())
a = list(map(int, input().split()))

s = [0] * N
s[0] = a[0]

for i in range(1,N):
    s[i] = s[i-1]+a[i]

ans = s[K-1]
for j in range(K,N):
    ans += s[j] - s[j-K]

print(ans)
