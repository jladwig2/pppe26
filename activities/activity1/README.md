| Level | One chain | Four chains | Speedup |
|---|---|---|---|
| `-O0` | 186 ms | 184 ms | 1.01x |
| `-O1` | 39 ms | 18 ms | 2.17x |
| `-O2` | 39 ms | 18 ms | 2.17x |
| `-O3` | 39 ms | 18 ms | 2.17x |

This comes from:
```bash
$ clang++ -std=c++17 -O0 -o activity1_O0 activity1_pipeline.cpp && ./activity1_O0
```
=== Activity 1: Independent Accumulators ===
Array size: 100000000 elements

One chain (stalled):          186 ms
Four chains (pipelined):      184 ms
Speedup: 1.01x
Same answer? YES
(Checksum: 16783984258637683210)

```bash
$ clang++ -std=c++17 -O1 -o activity1_O1 activity1_pipeline.cpp && ./activity1_O1
```
=== Activity 1: Independent Accumulators ===
Array size: 100000000 elements

One chain (stalled):           39 ms
Four chains (pipelined):       18 ms
Speedup: 2.17x
Same answer? YES
(Checksum: 16783984258637683210)

```bash
$ clang++ -std=c++17 -O2 -o activity1_O2 activity1_pipeline.cpp && ./activity1_O2
```
=== Activity 1: Independent Accumulators ===
Array size: 100000000 elements

One chain (stalled):           39 ms
Four chains (pipelined):       18 ms
Speedup: 2.17x
Same answer? YES
(Checksum: 16783984258637683210)

```bash
$ clang++ -std=c++17 -O3 -o activity1_O3 activity1_pipeline.cpp && ./activity1_O3
```
=== Activity 1: Independent Accumulators ===
Array size: 100000000 elements

One chain (stalled):           39 ms
Four chains (pipelined):       18 ms
Speedup: 2.17x
Same answer? YES
(Checksum: 16783984258637683210)

- **(a)** 
  No. Diffing any of the assembly files with another does not show anything
  under the symbols for this function.

  Here is the diff up to main of -O1 with -O2. It is clear that none of the
  instructions for either function are included, so they are the same. This 
  is the same for any other comparisons you could make, but I will leave 
  them out to avoid redundancy.

  ```diff
  --- activity1_O1.s	2026-09-25 19:22:57.559169700 -0400
  +++ activity1_O2.s	2026-09-25 19:23:05.495189600 -0400
  @@ -74,7 +74,35 @@
    .size	_Z12withTempVarsRSt6vectorIiSaIiEE, .Lfunc_end1-_Z12withTempVarsRSt6vectorIiSaIiEE
    .cfi_endproc
                                          # -- End function
  -	.globl	main                            # -- Begin function main
  +	.section	.rodata.cst16,"aM",@progbits,16
  +	.p2align	4, 0x0                          # -- Begin function main
  +.LCPI2_0:
  +	.long	0                               # 0x0
  +	.long	1                               # 0x1
  +	.long	2                               # 0x2
  +	.long	3                               # 0x3
  +.LCPI2_1:
  +	.long	4                               # 0x4
  +	.long	4                               # 0x4
  +	.long	4                               # 0x4
  +	.long	4                               # 0x4
  +.LCPI2_2:
  +	.long	1374389535                      # 0x51eb851f
  +	.long	1374389535                      # 0x51eb851f
  +	.long	1374389535                      # 0x51eb851f
  +	.long	1374389535                      # 0x51eb851f
  +.LCPI2_3:
  +	.long	100                             # 0x64
  +	.long	100                             # 0x64
  +	.long	100                             # 0x64
  +	.long	100                             # 0x64
  +.LCPI2_4:
  +	.long	8                               # 0x8
  +	.long	8                               # 0x8
  +	.long	8                               # 0x8
  +	.long	8                               # 0x8
  +	.text
  +	.globl	main
    .p2align	4
    .type	main,@function
  main:                                   # @main
  ```

- **(b)**
  No. Same reasoning as above.

- **(c)** 
  Neither function uses any vector/SIMD registers at any optimization level,
  but there are some SIMD constants used elsewhere in main for the -O2 and -03
  optimizations (LCPI2_0 through LCPI2_4 right after the two functions). So, 
  there are some SIMD instructions used to optimize other things in main.

  Here is the code from the -O2 file, from the start of the file to the start 
  of main, where the SIMD constants are visible but there are no vector/SIMD
  registers used in the function code. The -O3 file is the same from above.

  ```asm
    .file	"activity1_pipeline.cpp"
                                          # Start of file scope inline assembly
    .globl	_ZSt21ios_base_library_initv

                                          # End of file scope inline assembly
    .text
    .globl	_Z10noTempVarsRSt6vectorIiSaIiEE # -- Begin function _Z10noTempVarsRSt6vectorIiSaIiEE
    .p2align	4
    .type	_Z10noTempVarsRSt6vectorIiSaIiEE,@function
  _Z10noTempVarsRSt6vectorIiSaIiEE:       # @_Z10noTempVarsRSt6vectorIiSaIiEE
    .cfi_startproc
  # %bb.0:
    movq	(%rdi), %rcx
    movl	$1, %eax
    movq	$-4, %rdx
    .p2align	4
  .LBB0_1:                                # =>This Inner Loop Header: Depth=1
    movslq	16(%rcx,%rdx,4), %rsi
    orq	$1, %rsi
    imulq	%rax, %rsi
    movslq	20(%rcx,%rdx,4), %rax
    orq	$1, %rax
    movslq	24(%rcx,%rdx,4), %rdi
    orq	$1, %rdi
    imulq	%rax, %rdi
    imulq	%rsi, %rdi
    movslq	28(%rcx,%rdx,4), %rax
    orq	$1, %rax
    imulq	%rdi, %rax
    addq	$4, %rdx
    cmpq	$99999996, %rdx                 # imm = 0x5F5E0FC
    jb	.LBB0_1
  # %bb.2:
    retq
  .Lfunc_end0:
    .size	_Z10noTempVarsRSt6vectorIiSaIiEE, .Lfunc_end0-_Z10noTempVarsRSt6vectorIiSaIiEE
    .cfi_endproc
                                          # -- End function
    .globl	_Z12withTempVarsRSt6vectorIiSaIiEE # -- Begin function _Z12withTempVarsRSt6vectorIiSaIiEE
    .p2align	4
    .type	_Z12withTempVarsRSt6vectorIiSaIiEE,@function
  _Z12withTempVarsRSt6vectorIiSaIiEE:     # @_Z12withTempVarsRSt6vectorIiSaIiEE
    .cfi_startproc
  # %bb.0:
    movq	(%rdi), %rsi
    movl	$1, %ecx
    movq	$-4, %rdi
    movl	$1, %eax
    movl	$1, %edx
    movl	$1, %r8d
    .p2align	4
  .LBB1_1:                                # =>This Inner Loop Header: Depth=1
    movslq	16(%rsi,%rdi,4), %r9
    orq	$1, %r9
    imulq	%r9, %rcx
    movslq	20(%rsi,%rdi,4), %r9
    orq	$1, %r9
    imulq	%r9, %rax
    movslq	24(%rsi,%rdi,4), %r9
    orq	$1, %r9
    imulq	%r9, %rdx
    movslq	28(%rsi,%rdi,4), %r9
    orq	$1, %r9
    imulq	%r9, %r8
    addq	$4, %rdi
    cmpq	$99999996, %rdi                 # imm = 0x5F5E0FC
    jb	.LBB1_1
  # %bb.2:
    imulq	%r8, %rdx
    imulq	%rcx, %rax
    imulq	%rdx, %rax
    retq
  .Lfunc_end1:
    .size	_Z12withTempVarsRSt6vectorIiSaIiEE, .Lfunc_end1-_Z12withTempVarsRSt6vectorIiSaIiEE
    .cfi_endproc
                                          # -- End function
    .section	.rodata.cst16,"aM",@progbits,16
    .p2align	4, 0x0                          # -- Begin function main
  .LCPI2_0:
    .long	0                               # 0x0
    .long	1                               # 0x1
    .long	2                               # 0x2
    .long	3                               # 0x3
  .LCPI2_1:
    .long	4                               # 0x4
    .long	4                               # 0x4
    .long	4                               # 0x4
    .long	4                               # 0x4
  .LCPI2_2:
    .long	1374389535                      # 0x51eb851f
    .long	1374389535                      # 0x51eb851f
    .long	1374389535                      # 0x51eb851f
    .long	1374389535                      # 0x51eb851f
  .LCPI2_3:
    .long	100                             # 0x64
    .long	100                             # 0x64
    .long	100                             # 0x64
    .long	100                             # 0x64
  .LCPI2_4:
    .long	8                               # 0x8
    .long	8                               # 0x8
    .long	8                               # 0x8
    .long	8                               # 0x8
    .text
    .globl	main
    .p2align	4
    .type	main,@function
  main:                                   # @main
  ```

- **(d)** 

  In .LBB0_1, which is the loop corresponding to noTempVars, the first mul reads
  %rax (previous iteration's accumulator) and %rsi, and writes to %rsi. The next
  mul reads %rax and %rdi, and writes to %rdi. Then we read %rsi (written by the
  first mul) and %rdi (written by the second mul), and write to %rdi. Finally, we
  read %rdi and %rax, and write to $rax. So, for noTempVars, each single mul does
  not necessarily read directly from the mul before it, but there is a clear chain
  of dependencies, where, for example, mul3 must wait on mul1 and mul2. 

  Now, in .LBB1_1, the loop corresponding to withTempVars, there are clear,
  separate accumulator registers used for each mul, so there is no reading directly
  from the previous write. 

  In each loop, there are 15 instructions. This seems to disagree with the results 
  table. How can we achieve a 2x speedup with the same number of instructions.
  Well, the answer is the purpose of this assignment: pipeline stalls. In the case
  of noTempVars, the pipeline is clearly stalling and must wait for other 
  dependencies to resolve before continuing execution. So, this result actually 
  agrees with what we expect; that is, the pipeline is stalling with a single
  accumulator. 

  Here is the loop code for each function, in the -O3 file (but they are identical):

  ```asm  
  .LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movslq	16(%rcx,%rdx,4), %rsi
	orq	$1, %rsi
	imulq	%rax, %rsi
	movslq	20(%rcx,%rdx,4), %rax
	orq	$1, %rax
	movslq	24(%rcx,%rdx,4), %rdi
	orq	$1, %rdi
	imulq	%rax, %rdi
	imulq	%rsi, %rdi
	movslq	28(%rcx,%rdx,4), %rax
	orq	$1, %rax
	imulq	%rdi, %rax
	addq	$4, %rdx
	cmpq	$99999996, %rdx                 # imm = 0x5F5E0FC
	jb	.LBB0_1

  .LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movslq	16(%rsi,%rdi,4), %r9
	orq	$1, %r9
	imulq	%r9, %rcx
	movslq	20(%rsi,%rdi,4), %r9
	orq	$1, %r9
	imulq	%r9, %rax
	movslq	24(%rsi,%rdi,4), %r9
	orq	$1, %r9
	imulq	%r9, %rdx
	movslq	28(%rsi,%rdi,4), %r9
	orq	$1, %r9
	imulq	%r9, %r8
	addq	$4, %rdi
	cmpq	$99999996, %rdi                 # imm = 0x5F5E0FC
	jb	.LBB1_1
  ```

- **(e)**
  No, it did not. We can see around a 2x speedup in withTempVars compared to 
  noTempVars, and that is consistent across optimization levels, so the compiler
  did not split the multiplication into multiple accumulators. So, it is clear 
  that the compiler with not help with this class of transformation in this case. 
  When writing code that could produce long RAW dependency chains, it is the 
  programmer's responsibility to avoid latency.

  Evidence: See results table combined with my explanation for (d) where I go
  over the dependency chain for noTempVars and show that it still uses one overall
  accumulator.

This assignment was completed with the assistance of Gemini 3.8 Flash (Extended),
which I used when I was too lazy to write the diff myself for each comparison, and
I used it to confirm that there were no SIMD registers used in either function.