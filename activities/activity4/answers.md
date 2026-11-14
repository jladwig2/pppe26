The assignment was completed on a machine with the following configuration:
  - OS: Fedora Linux 43
  - CPU: Ryzen 9 9950X
  - Compiler: OpenCilk 3.0 (`clang version 19.1.7`, `/opt/opencilk/bin/clang++`)

- **(a)**
  The trig input gives nearly the same speedup for all six versions, while
  we see the largest discrepancy across versions for the exp input. The 
  fastest version for that input is a tie between OpenMP dynamic and cilk_spawn,
  both with a median speedup of 3.92x. The slowest was OpenMP static with a
  median speedup of 1.14x.

  Results used here can be viewed in speedup.png and results.txt.

- **(b)**
  We have set PANELS=1024, so each of the four threads gets 1024/4 = 256 panels.
  They are assigned by quarter, so thread 0 gets panels 0-255, thread 1 gets 
  panels 256-511, and so on. Because all threads wait to synchronize after the 
  loop execution concludes, the parallel runtime is at least the time of the 
  heaviest quarter. The theoretical speedup maximum is then 100/max(quarter_i)
  for each input. Trig: 100/25.17 = 3.97x, the median measured was 3.91x, so 
  this is quite close to the theoretical max. Poly: 100/42.20 = 2.37x, the median
  measured was 2.33x, so this is also quite close to the theoretical max. Exp: 
  100/86.30 = 1.16x, the median measured was 1.14x, so all the implementations 
  are quite close to the theoretical maximum speedup.
  
  Results:

  skew         trig  eps 1e-08: serial   324.57 ms, integral -0.00791175435115287
  per panel: min 168.4 us, median 333.0 us, max 440.6 us
  costliest 1% of panels: 1% of the work
  work by quarter of [0,1]: 24.92% 24.90% 25.17% 25.01%

  skew         poly  eps 1e-12: serial   285.14 ms, integral 0.866850512866918
  per panel: min 154.2 us, median 181.6 us, max 13680.5 us
  costliest 1% of panels: 13% of the work
  work by quarter of [0,1]: 27.04% 15.24% 15.52% 42.20%

  skew         exp   eps 1e-12: serial   219.70 ms, integral 0.00282017329394319
  per panel: min 0.5 us, median 35.5 us, max 1428.3 us
  costliest 1% of panels: 6% of the work
  work by quarter of [0,1]: 0.31% 1.80% 11.60% 86.30%

- **(c)**
  Dynamic scheduling will improve performance the most when the work per iteration
  is largely non-uniform. Handing out panels one at a time allows you to supply
  threads that would be idling in the static case with more work to do. So,
  looking at the inputs, trig is mostly uniform, so you would not expect to see
  much difference between static and dynamic scheduling there. We see trig has
  around 25% work per quarter and that the static median is 3.91x while the
  dynamic median is 3.93x, so the assumptions based on the data hold here. For
  poly, the work is concentrated at both ends, so the middle is largely uniform.
  We would expect to see a middling performance difference here (not the largest,
  but larger than trig). We see poly has around 15% work in both middle quarters,
  with larger portions on the ends, and that the static median is 2.33x while the
  dynamic median is 3.56x, so our assumptions check out again. For exp, we expect 
  the largest skew in the work, which should give the largest performance
  discrepancy. We see exp has 5-7x the portion of working moving from one quarter
  to the next, and that the static median is 1.14x while the dynamic median is
  3.92x, so all of the results agree with assumptions about the data. 

- **(d)**
  When no chunk size is specified, OpenMP defaults to 1 for schedule(dynamic). It
  does not depend on the number of iterations or threads.

- **(e)**
  The compiler is given above. It uses OpenCilkABI / Cheetah runtime. OpenCilk 
  computes the default grain size as:
  
  grainsize = max(1, min(2048, floor(N / (8*P))))

  where N is the trip count and P is __cilkrts_nproc (the number of workers). For 
  this loop, N = 1024 and P = 4, which gives 32 panels. cilk_for recursively
  halves [0, 1024) until the subrange size is less than or equal to 32, which 
  gives 32 grains of 32 panels each. Each grain covers 32/1024 = 1/32 or 3.125%. 

  Source:

  The formula was determined by inspecting the compiled binary.
  
  Inside /opt/opencilk/lib/clang/19/lib/x86_64-unknown-linux-gnu/libopencilk-abi.bc
  at Function @__cilkrts_cilk_for_grainsize_32 
  (extracted via /opt/opencilk/bin/llvm-dis ... -o -)

  define dso_local range(i32 1, 0) i32 @__cilkrts_cilk_for_grainsize_32(i32 noundef %n)
  local_unnamed_addr #2 !dbg !1394 {
    entry:
        #dbg_value(i32 %n, !1398, !DIExpression(), !1401)
      %0 = load i32, ptr @__cilkrts_nproc, align 4, !dbg !1402, !tbaa !587
      %mul = shl i32 %0, 3, !dbg !1402
      %div = udiv i32 %n, %mul, !dbg !1402
        #dbg_value(i32 %div, !1399, !DIExpression(), !1401)
      %cond = tail call i32 @llvm.umin.i32(i32 %div, i32 2048), !dbg !1402
      %retval.0 = tail call i32 @llvm.umax.i32(i32 %cond, i32 1), !dbg !1402
      ret i32 %retval.0, !dbg !1402
  }

  We see,

  %0 = load i32, ptr @__cilkrts_nproc # maps to P (number of workers)
  %mul = shl i32 %0, 3 # maps to 8 * P
  %div = udiv i32 %n, %mul # maps to unsigned int div, with implicit floor()
  @llvm.umin.i32(i32 %div, i32 2048) # maps to min()
  @llvm.umax.i32(i32 %cond, i32 1) # maps to max()

  which gives the formula above.

- **(f)**
  From the plot, we see the results for trig are nearly identical, the results
  for poly show grainsize(1) improves the median speedup from 3.30x to 3.56x, 
  which is a noticeable speedup. For exp, grainsize(1) improves the median speedup
  more substantially from 3.31x to 3.90x. So, yes, the grainsize(1) version 
  improves the uneven inputs on this machine, with a larger gain on the "more"
  uneven input. 
  Under the default grain size, a grain is indivisible once a worker starts it. 
  On exp, skew shows 86.30% of the work is in the last quarter, and the costliest
  1% holds 6% of the total work. Because the work grows exponentially, the final
  grain contains all 10 of those costliest panels plus the next 22 heaviest panels.
  So we have three workers idling. With grainsize(1), the largest single panel is
  only 0.65% of the total, so work share is more balanced and we have a higher 
  speedup since the idling was removed. Similar idea for poly.

- **(g)**
  OpenMP assumes loop iterations may have uneven/unpredictable costs and that each
  iteration does enough work to outweigh the per-iteration dynamic dispatch overhead.
  OpenCilk assumes loop iterations are cheap and roughly uniform in cost, so batching
  them into 8P chunks covers spawn/steal costs while providing enough chunks to 
  smooth out small variations.
  From this reasoning, we conclude that OpenMP's default fits this loop much better,
  because each panel takes a noticeable amount of time (some take thousands of 
  microseconds), which is much larger than the spawn/steal overhead, while per-panel
  work varies by orders of magnitude on the uneven inputs.

AI Use Disclosure: Gemini was used as an assistant in this assignment. I tasked it
with providing me hints about the code to implement, so that I could still reason
about the usage myself. I also had it determine the formula used for the OpenCilk 
grainsize from source and give me the evidence it used, though I did write that 
section (and anything that was written here) myself.