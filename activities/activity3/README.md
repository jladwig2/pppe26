The assignment was completed on a machine with the following configuration:
  - OS: Fedora Linux 43
  - CPU: Ryzen 9 9950x
  - Compilers: 
    g++ (GCC) 15.3.1 20260722 (Red Hat 15.3.1-1)
    clang version 21.1.8 (Fedora 21.1.8-6.fc43)

- **(a)**
  g++ reports that it did not vectorize the scalar loop, while clang++ did.
  Note that the `to_hex` loop is on line 124. 

Terminal output:
``` bash
$ g++ -O3 -std=c++17 -mavx2 -fopt-info-vec-all -c activity3_hex.cpp -o /dev/null
```
activity3_hex.cpp:124:24: missed: couldn't vectorize loop
activity3_hex.cpp:124:24: missed: may need non-SLP handling
activity3_hex.cpp:123:6: note: vectorized 0 loops in function.
``` bash
$ g++ -O3 -std=c++17 -mavx2 -fopt-info-vec-all -c activity3_hex.cpp -o /dev/null
```
activity3_hex.cpp:124:3: remark: vectorized loop (vectorization width: 32, interleaved count: 1) [-Rpass=loop-vectorize]
  124 |   for (size_t i = 0; i < n; i++) {
      |   ^

- **(b)**
  There are no shuffle instructions (vpshufb) in `to_hex`. The table loojups are implemented with scalar memory loads
  indexed off _ZL3HEX and lane-by-lane byte insertions into the XMM registers (movzx, vmovd, and vpinsrb).

Code Excerpt:
``` asm
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movzx	esi, byte ptr [rcx + r8 - 15]
	mov	qword ptr [rsp + 56], rsi       # 8-byte Spill
	movzx	r9d, byte ptr [rcx + r8 - 14]
	mov	qword ptr [rsp + 48], r9        # 8-byte Spill
	...                                 # (loads 32 input bytes one by one, spilling to stack)
	mov	edx, esi
	shr	edx, 4
	movzx	edx, byte ptr [rdx + _ZL3HEX]
	vmovd	xmm0, edx
	mov	edx, r9d
	shr	edx, 4
	vpinsrb	xmm0, xmm0, byte ptr [rdx + _ZL3HEX], 1
	mov	edx, r10d
	shr	edx, 4
	vpinsrb	xmm0, xmm0, byte ptr [rdx + _ZL3HEX], 2
	...                                 # (repeats 60 more scalarshr/and + _ZL3HEX loads + vpinsrb)
	and	r13d, 15
	vpinsrb	xmm3, xmm3, byte ptr [r13 + _ZL3HEX], 15
	vinserti128	ymm0, ymm1, xmm0, 1
	vinserti128	ymm1, ymm3, xmm2, 1
	vpunpckhbw	ymm2, ymm0, ymm1
	vpunpcklbw	ymm0, ymm0, ymm1
	vperm2i128	ymm1, ymm0, ymm2, 32
	vperm2i128	ymm0, ymm0, ymm2, 49
	vmovdqu	ymmword ptr [r12 + 2*r8 + 32], ymm0
	vmovdqu	ymmword ptr [r12 + 2*r8], ymm1
	add	r8, 32
	cmp	rax, r8
	jne	.LBB0_11
```

- **(c)**
  No, the vectorization happens solely at the end of the processing, to perform what is essentially
  a vector store. The compiler treated HEX[...] as an arbitrary memory gather that AVX2 has no 
  byte-level instruction for. As a result, it unrolled 32 iterations of scalar byte loads, 
  shifts/masks, and individual HEX memory lookups in general-purpose registers (spilling heavily to 
  the stack), then packed the 64 resulting bytes into XMM registers one lane at a time with 60 vpinsrb
  instructions just to do vector interleaves and two 32-byte vector stores at the very end.

- **(d)**
  | Quantity | Value |
  |---|---|
  | Vector register width (bits) | 256 |
  | Bytes per vector register | 32 |
  | Input bytes per loop iteration | 32 |
  | Ideal speedup from lane count alone | 32x |
  | Your predicted speedup at 16 KiB | ~16x |

  Per input byte, the scalar loop performs 3 loads and 2 stores (or 4 loads and 2 stores before CSE if
  in[i] is loaded twice): 1 byte load for in[i], 2 table-lookup byte loads from HEX[...] (one for the
  high nibble, one for the low nibble), and 2 byte stores to out[2*i] and out[2*i + 1], plus the shift,
  mask, and loop-counter instructions (~8–10 instructions per input byte, or ~256–320 instructions per
  32 bytes). Each 32-byte AVX2 iteration needs roughly 13-14 instructions total. Our predicted speedup
  is lower than the theoretical due to the data movement across lanes (which does not happen in the 
  scalar case). I went with around half the theoretical, since we must perform cross-lane operations to
  set up the nibbles (two per lane).

- **(e)**
  We split a byte into nibbles using two steps. To get the low nibble, use bitwise AND against 0x0f. To 
  get the high nibble, shift right 4 bits and use another bitwise AND with 0x0f. The bitwise AND uses
  _mm256_and_si256 (vpand) and the right shift uses _mm256_srli_epi16 (vpsrlw). The mask after the right
  shift is required because x86 AVX2 has no 8-bit element shift instruction, so the 16-bit shift moves
  the low 4 bits of each odd byte into the upper 4 bits of the adjacent even byte, which would corrupt
  the even byte's index if there was no mask.

- **(f)**
  To get the characters in the correct order, we must interleave the high-nibble and low-nibble within 
  each 128-bit half independently. We use corresponding unpack intrinsics for each nibble, then use two
  permute intrinsics to reassemble the four 128-bit blocks in sequential order before storing. If we 
  leave out the final permute, unpack_lo holds the hex characters for input bytes 0 to 7, followed by
  input bytes 16 to 23 (unpack_hi holds the other two sets). The first difference would be reported at 
  n = 32, output character 16 (the first character of of input byte 8).

- **(g)**
  The loop body for the handwritten AVX2 implementation is 11 lines, while the Highway implementation 
  is only 6 lines. For the speeds, we see the native SIMD is faster by ~30-60% when the input size can
  comfortably fit inside the cpu caches. At 4 MiB and 64 MiB, we see the computation is largely 
  memory-bound, so the SIMD and Highway versions perform around the same. `hn::StoreInterleaved2` 
  replaces the interleave and store steps found in the AVX2 version, since its purpose is to interleave
  those input elements into alternating byte pairs across the full vector width, and then write the 2*N
  bytes to memory. 

Terminal output:
``` bash
$ ./activity3
```
requested cpu0
5.65 GHz estimated from dependent adds, min of 7 trials
highway target: AVX2, 32 byte lanes per vector
simd: agrees with scalar for n = 0..300 on every byte value
highway: agrees with scalar for n = 0..300 on every byte value

  input         scalar       simd    highway      simd   highway
               ns/byte    ns/byte    ns/byte   speedup   speedup
  1 KiB         0.3205     0.0140     0.0227     22.9x     14.1x
  16 KiB        0.3307     0.0145     0.0232     22.8x     14.3x
  256 KiB       0.3354     0.0171     0.0227     19.7x     14.8x
  4 MiB         0.3368     0.0207     0.0237     16.3x     14.2x
  64 MiB        0.3370     0.0709     0.0695      4.8x      4.9x

- **(h)**
  | input | scalar ns/byte | simd ns/byte | highway ns/byte | simd speedup | highway speedup |
  |---|---|---|---|---|---|
  | 1 KiB | 0.3205 | 0.0140 | 0.0227 | 22.9x | 14.1x |
  | 16 KiB | 0.3307 | 0.0145 | 0.0232 | 22.8x | 14.3x |
  | 256 KiB | 0.3354 | 0.0171 | 0.0227 | 19.7x | 14.8x |
  | 4 MiB | 0.3368 | 0.0207 | 0.0237 | 16.3x | 14.2x |
  | 64 MiB | 0.3370 | 0.0709 | 0.0695 | 4.8x | 4.9x |

  The prediction was fairly low compared to the actual measured result at 16 KiB, although the speedup
  is still below the theoretical lane-based speedup as expected. I think the underestimate here is that 
  the core will overlap all of the independent operations, so we do not quite half our performance 
  relative to the theoretical, and instead we get a result that is more like 3/4. The instruction 
  overhead for Highway is higher, since it must check bounds to guarantee behavior for portability. So,
  our estimate was very close to the highway performance, but I do not believe that is the result of a 
  good estimate. Rather, it was the result of getting lucky with two things that were not accounted for. 
  For larger input sizes, we see the memory bandwidth takes over as the governing constraint.

AI Use Disclosure: Gemini was used as an assistant in this assignment, mostly for reading the assembly 
where needed, but also for checking some conceptual understanding of the instrinsics and what they do.