import numpy as np

n = int(input())
a = list(map(int,input().split()))

sum_rec = 0

for i in range(len(a)):
    sum_rec += np.reciprocal(float(a[i]))

print(np.reciprocal(sum_rec))
