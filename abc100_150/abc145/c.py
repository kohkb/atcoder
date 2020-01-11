import itertools
import numpy as np

n = int(input())
xy = []
for i in range(n):
    xy.append(list(map(int,input().split())))



ans = []

def distance(a, b):
    return np.sqrt((a[0]-b[0])**2 + (a[1]-b[1])**2)

for v in itertools.permutations(xy, n):

    tmp = 0
    for i in range(n-1):
        tmp += distance(v[i], v[i+1])

    ans.append(tmp)


print(np.average(ans))
