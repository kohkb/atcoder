W,H = map(int, input().split())



MOD = 1000000007


# TLE開放
# arr = [[0]*H for _ in range(W)]
# for i in range(W):
#     for j in range(H):
#         if i == 0:
#             arr[i][j] = 1
#         elif j == 0:
#             arr[i][j] = 1
#         else:
#             arr[i][j] = (arr[i-1][j] + arr[i][j-1]) % MOD
#
# print(arr[W-1][H-1] % MOD)


def cmb(n, r, mod):
    if ( r<0 or r>n ):
        return 0
    r = min(r, n-r)
    return g1[n] * g2[r] * g2[n-r] % mod

mod = 10**9+7 #出力の制限
N = 2*10**5
g1 = [1, 1] # 元テーブル
g2 = [1, 1] #逆元テーブル
inverse = [0, 1] #逆元テーブル計算用テーブル

for i in range( 2, N + 1 ):
    g1.append( ( g1[-1] * i ) % mod )
    inverse.append( ( -inverse[mod % i] * (mod//i) ) % mod )
    g2.append( (g2[-1] * inverse[-1]) % mod )

print(cmb(W+H-2,W-1,MOD))
