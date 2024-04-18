import functools
import sys

@functools.lru_cache(maxsize=1000000, typed=True)
def cycle_length(n):
    if n == 1:
        return 1
    cnt = 1
    while n != 1:
        print(n)
        if n & 1 == 1:
            n = n + n + n + 1
        else:
            print(n)
            n = n >> 1
        cnt += 1
        print(cnt)
    return cnt

# print(cycle_length(1000))