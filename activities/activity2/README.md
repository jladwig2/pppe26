| Quantity | Value |
|---|---|
| L1d size | 48 KB |
| Associativity (ways) | 12-way |
| Line size (bytes) | 64 |
| Number of sets | 64 |
| Core clock after warm-up | 5.72 GHz |

Terminal output:
``` bash
$ clang++ -std=c++17 -O1 -o activity2 activity2_conflicts.cpp && ./activity2
```
cpu0  5.72 GHz (measured, after warm-up)
L1d: 48 KB, 12-way, 64-byte lines  ->  64 sets

- **(a)**
  For a Ryzen 9 9950x, the L1 data cache is 12-ways associative and has a (per core) 
  capacity of 48 KB, with 64-byte lines. Using 48 KB (the binary value), this comes
  out to be 49152 / (12 * 64) = 64 sets. So, the hardware was detected correctly.

- **(b)**
  A double is 8 bytes, so we can fit 8 doubles in one cache line on this machine.

| `lda` | row bytes | sets reached (predicted) | fast or slow? (predicted) |
|---|---|---|---|
| 2048 | 16384 | 1 | slow |
| 2049 | 16392 | 64 | fast |
| 2050 | 16400 | 64 | fast |
| 2052 | 16416 | 64 | fast |
| 2056 | 16448 | 64 | fast |
| 2064 | 16512 | 32 | fast |
| 2080 | 16640 | 16 | fast |
| 2112 | 16896 | 8 | slow |
| 2176 | 17408 | 4 | slow |
| 2304 | 18432 | 2 | slow |

- **(c)**
  Fast means the number of sets reached is greater than the associativity. So,
  any number of sets reached that is above 12 will be fast, the rest will be slow.
  This is because touching 12 or fewer sets forces writes to cycle through the same
  sets faster than their 12 ways can absorb, causing continuous eviction. Spreading
  accesses over more than 12 sets distributes the lines across independent sets.

| `lda` | sets reached | measured time | speedup vs `lda`=2048 | prediction correct? |
|---|---|---|---|---|
| 2048 | 1 | 21.9 ms | 1.00x | yes |
| 2049 | 64 | 3.9 ms | 5.57x | yes |
| 2050 | 64 | 3.5 ms | 6.20x | yes |
| 2052 | 64 | 3.2 ms | 6.90x | yes |
| 2056 | 64 | 3.2 ms | 6.81x | yes |
| 2064 | 32 | 3.2 ms | 6.76x | yes |
| 2080 | 16 | 3.0 ms | 7.24x | yes |
| 2112 | 8 | 8.4 ms | 2.62x | yes |
| 2176 | 4 | 11.0 ms | 1.99x | yes |
| 2304 | 2 | 15.0 ms | 1.46x | yes |

This comes from:

``` bash
$ clang++ -std=c++17 -O1 -o activity2 activity2_conflicts.cpp && ./activity2
```
cpu0  5.69 GHz (measured, after warm-up)
L1d: 48 KB, 12-way, 64-byte lines  ->  64 sets

matrix 2048x2048 doubles, naive transpose

     lda   row bytes      sets       time    vs lda=N
-------- ----------- --------- ---------- -----------
    2048       16384         1     21.9 ms       1.00x
    2049       16392        64      3.9 ms       5.57x
    2050       16400        64      3.5 ms       6.20x
    2052       16416        64      3.2 ms       6.90x
    2056       16448        64      3.2 ms       6.81x
    2064       16512        32      3.2 ms       6.76x
    2080       16640        16      3.0 ms       7.24x
    2112       16896         8      8.4 ms       2.62x
    2176       17408         4     11.0 ms       1.99x
    2304       18432         2     15.0 ms       1.46x

(checksum 0)
core clock at end of run: 5.67 GHz

- **(d)**
  The time is not monotonic in sets reached as it increases going from 16 to 32 
  and even among the 64 set entries we see some variation in the time. There are 
  diminishing returns (if any) going beyond the set associativity, which, in this
  case, means that going above 16 sets did not improve performance.

- **(e)**
  The rule is to avoid lda values with high power of two divisibility, because we
  take the gcd of lda/8 and S. You want to avoid that gcd being within one two 
  powers of two of your number of sets. 

- **(f)**
  The smallest lda above 2048 that qualifies is 2049, which is already in the results.
  This should give us 64 unique sets reached with an overhead of (2049 - 2048) / 2048,
  which is about 0.05% for a >5x speedup.

For part 4, I do not have access to an Apple machine with varying cores. My processor
has homogenous Zen 5 cores, so there is little to no difference determined by pinning a
specific core. So, I cannot provide a table. That said, I will attempt to answer
the questions related to this topic based on my understanding.

- **(g)**
  No, the predictions do not need to change. The formula depends on the cache stucture
  only. So, assuming the cores have the same cache structure, the lda performance will
  be independent of the core running the program. 

- **(h)**
  In this case, we would expect to see lda = 2048 have a ratio that is indpendent of 
  the core clock, while the best lda would depend heavily on the core clock. This is 
  because, for an lda that reaches more sets than the cache associativity, all
  instructions execute using the cached data, which has almost no transfer time. For
  lda = 2048, this is not the case, and we are bound by memory transfers when writing
  back from the cache on every iteration (since we only reach 1 set). The time is 
  bound by the core clock in the best lda case, and it is bound by memory transfer 
  time in the lda = 2048 case.

- **(i)**
  No, that is not consistent with the previous answer. Say the ratio is R. Then 
  R(2048) / R(best) > 1 means R(2048) > R(best). Since only one of these can be close to
  1, and the other is above 1, R(2048) must be above 1, which is the core clock ratio. 

AI Use Disclosure: Gemini was consulted in determining the formula for the distinct 
number of sets reached. All other work is my own.