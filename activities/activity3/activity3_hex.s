	.intel_syntax noprefix
	.file	"activity3_hex.cpp"
	.text
	.globl	_Z6to_hexPKhmPc                 # -- Begin function _Z6to_hexPKhmPc
	.p2align	4
	.type	_Z6to_hexPKhmPc,@function
_Z6to_hexPKhmPc:                        # @_Z6to_hexPKhmPc
	.cfi_startproc
# %bb.0:
	test	rsi, rsi
	je	.LBB0_18
# %bb.1:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	r13
	.cfi_def_cfa_offset 40
	push	r12
	.cfi_def_cfa_offset 48
	push	rbx
	.cfi_def_cfa_offset 56
	sub	rsp, 64
	.cfi_def_cfa_offset 120
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r12, rdx
	cmp	rsi, 7
	jbe	.LBB0_2
# %bb.7:
	lea	rax, [r12 + 2*rsi]
	lea	rcx, [rdi + rsi]
	cmp	r12, rcx
	setb	cl
	cmp	rdi, rax
	setb	al
	test	cl, al
	je	.LBB0_8
.LBB0_2:
	xor	eax, eax
.LBB0_3:
	mov	rcx, rax
	or	rcx, 1
	test	sil, 1
	je	.LBB0_5
# %bb.4:
	movzx	edx, byte ptr [rdi + rax]
	shr	edx, 4
	movzx	edx, byte ptr [rdx + _ZL3HEX]
	mov	byte ptr [r12 + 2*rax], dl
	movzx	edx, byte ptr [rdi + rax]
	and	edx, 15
	movzx	edx, byte ptr [rdx + _ZL3HEX]
	mov	byte ptr [r12 + 2*rax + 1], dl
	mov	rax, rcx
.LBB0_5:
	cmp	rsi, rcx
	je	.LBB0_17
	.p2align	4
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movzx	ecx, byte ptr [rdi + rax]
	shr	ecx, 4
	movzx	ecx, byte ptr [rcx + _ZL3HEX]
	mov	byte ptr [r12 + 2*rax], cl
	movzx	ecx, byte ptr [rdi + rax]
	and	ecx, 15
	movzx	ecx, byte ptr [rcx + _ZL3HEX]
	mov	byte ptr [r12 + 2*rax + 1], cl
	movzx	ecx, byte ptr [rdi + rax + 1]
	shr	ecx, 4
	movzx	ecx, byte ptr [rcx + _ZL3HEX]
	mov	byte ptr [r12 + 2*rax + 2], cl
	movzx	ecx, byte ptr [rdi + rax + 1]
	and	ecx, 15
	movzx	ecx, byte ptr [rcx + _ZL3HEX]
	mov	byte ptr [r12 + 2*rax + 3], cl
	add	rax, 2
	cmp	rsi, rax
	jne	.LBB0_6
.LBB0_17:
	add	rsp, 64
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	r12
	.cfi_def_cfa_offset 40
	pop	r13
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	.cfi_restore rbx
	.cfi_restore r12
	.cfi_restore r13
	.cfi_restore r14
	.cfi_restore r15
	.cfi_restore rbp
.LBB0_18:
	vzeroupper
	ret
.LBB0_8:
	.cfi_def_cfa_offset 120
	.cfi_offset rbx, -56
	.cfi_offset rbp, -16
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	cmp	rsi, 32
	jae	.LBB0_10
# %bb.9:
	xor	eax, eax
	jmp	.LBB0_14
.LBB0_10:
	mov	qword ptr [rsp - 88], rsi       # 8-byte Spill
	mov	rax, rsi
	and	rax, -32
	lea	rcx, [rdi + 31]
	xor	r8d, r8d
	.p2align	4
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movzx	esi, byte ptr [rcx + r8 - 15]
	mov	qword ptr [rsp + 56], rsi       # 8-byte Spill
	movzx	r9d, byte ptr [rcx + r8 - 14]
	mov	qword ptr [rsp + 48], r9        # 8-byte Spill
	movzx	r10d, byte ptr [rcx + r8 - 13]
	mov	qword ptr [rsp + 40], r10       # 8-byte Spill
	movzx	r11d, byte ptr [rcx + r8 - 12]
	mov	qword ptr [rsp + 32], r11       # 8-byte Spill
	movzx	ebx, byte ptr [rcx + r8 - 11]
	mov	qword ptr [rsp + 24], rbx       # 8-byte Spill
	movzx	ebp, byte ptr [rcx + r8 - 10]
	mov	qword ptr [rsp + 16], rbp       # 8-byte Spill
	movzx	r13d, byte ptr [rcx + r8 - 9]
	mov	qword ptr [rsp + 8], r13        # 8-byte Spill
	movzx	r15d, byte ptr [rcx + r8 - 8]
	mov	qword ptr [rsp], r15            # 8-byte Spill
	movzx	r14d, byte ptr [rcx + r8 - 7]
	mov	qword ptr [rsp - 8], r14        # 8-byte Spill
	movzx	edx, byte ptr [rcx + r8 - 6]
	mov	qword ptr [rsp - 128], rdx      # 8-byte Spill
	movzx	edx, byte ptr [rcx + r8 - 5]
	mov	qword ptr [rsp - 120], rdx      # 8-byte Spill
	movzx	edx, byte ptr [rcx + r8 - 4]
	mov	qword ptr [rsp - 112], rdx      # 8-byte Spill
	movzx	edx, byte ptr [rcx + r8 - 3]
	mov	qword ptr [rsp - 104], rdx      # 8-byte Spill
	movzx	edx, byte ptr [rcx + r8 - 2]
	mov	qword ptr [rsp - 96], rdx       # 8-byte Spill
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
	mov	edx, r11d
	shr	edx, 4
	vpinsrb	xmm0, xmm0, byte ptr [rdx + _ZL3HEX], 3
	mov	edx, ebx
	shr	edx, 4
	vpinsrb	xmm0, xmm0, byte ptr [rdx + _ZL3HEX], 4
	mov	edx, ebp
	shr	edx, 4
	vpinsrb	xmm0, xmm0, byte ptr [rdx + _ZL3HEX], 5
	mov	edx, r13d
	shr	edx, 4
	vpinsrb	xmm0, xmm0, byte ptr [rdx + _ZL3HEX], 6
	mov	edx, r15d
	shr	edx, 4
	vpinsrb	xmm0, xmm0, byte ptr [rdx + _ZL3HEX], 7
	mov	edx, r14d
	shr	edx, 4
	vpinsrb	xmm0, xmm0, byte ptr [rdx + _ZL3HEX], 8
	mov	rdx, qword ptr [rsp - 128]      # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shr	edx, 4
	vpinsrb	xmm0, xmm0, byte ptr [rdx + _ZL3HEX], 9
	mov	rdx, qword ptr [rsp - 120]      # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shr	edx, 4
	vpinsrb	xmm0, xmm0, byte ptr [rdx + _ZL3HEX], 10
	mov	rdx, qword ptr [rsp - 112]      # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shr	edx, 4
	vpinsrb	xmm0, xmm0, byte ptr [rdx + _ZL3HEX], 11
	mov	rdx, qword ptr [rsp - 104]      # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shr	edx, 4
	vpinsrb	xmm0, xmm0, byte ptr [rdx + _ZL3HEX], 12
	mov	rdx, qword ptr [rsp - 96]       # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shr	edx, 4
	vpinsrb	xmm0, xmm0, byte ptr [rdx + _ZL3HEX], 13
	movzx	edx, byte ptr [rcx + r8 - 1]
	mov	qword ptr [rsp - 16], rdx       # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shr	edx, 4
	vpinsrb	xmm0, xmm0, byte ptr [rdx + _ZL3HEX], 14
	movzx	edx, byte ptr [rcx + r8]
	mov	qword ptr [rsp - 24], rdx       # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shr	edx, 4
	vpinsrb	xmm0, xmm0, byte ptr [rdx + _ZL3HEX], 15
	movzx	edx, byte ptr [rcx + r8 - 31]
	mov	qword ptr [rsp - 32], rdx       # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shr	edx, 4
	movzx	edx, byte ptr [rdx + _ZL3HEX]
	vmovd	xmm1, edx
	movzx	edx, byte ptr [rcx + r8 - 30]
	mov	qword ptr [rsp - 40], rdx       # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shr	edx, 4
	vpinsrb	xmm1, xmm1, byte ptr [rdx + _ZL3HEX], 1
	movzx	edx, byte ptr [rcx + r8 - 29]
	mov	qword ptr [rsp - 48], rdx       # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shr	edx, 4
	vpinsrb	xmm1, xmm1, byte ptr [rdx + _ZL3HEX], 2
	movzx	edx, byte ptr [rcx + r8 - 28]
	mov	qword ptr [rsp - 56], rdx       # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shr	edx, 4
	vpinsrb	xmm1, xmm1, byte ptr [rdx + _ZL3HEX], 3
	movzx	edx, byte ptr [rcx + r8 - 27]
	mov	qword ptr [rsp - 64], rdx       # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shr	edx, 4
	vpinsrb	xmm1, xmm1, byte ptr [rdx + _ZL3HEX], 4
	movzx	edx, byte ptr [rcx + r8 - 26]
	mov	qword ptr [rsp - 72], rdx       # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shr	edx, 4
	vpinsrb	xmm1, xmm1, byte ptr [rdx + _ZL3HEX], 5
	movzx	edx, byte ptr [rcx + r8 - 25]
	mov	qword ptr [rsp - 80], rdx       # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shr	edx, 4
	vpinsrb	xmm1, xmm1, byte ptr [rdx + _ZL3HEX], 6
	movzx	r15d, byte ptr [rcx + r8 - 24]
	mov	edx, r15d
	shr	edx, 4
	vpinsrb	xmm1, xmm1, byte ptr [rdx + _ZL3HEX], 7
	movzx	r14d, byte ptr [rcx + r8 - 23]
	mov	edx, r14d
	shr	edx, 4
	vpinsrb	xmm1, xmm1, byte ptr [rdx + _ZL3HEX], 8
	movzx	ebx, byte ptr [rcx + r8 - 22]
	mov	edx, ebx
	shr	edx, 4
	vpinsrb	xmm1, xmm1, byte ptr [rdx + _ZL3HEX], 9
	movzx	r11d, byte ptr [rcx + r8 - 21]
	mov	edx, r11d
	shr	edx, 4
	vpinsrb	xmm1, xmm1, byte ptr [rdx + _ZL3HEX], 10
	movzx	r10d, byte ptr [rcx + r8 - 20]
	mov	edx, r10d
	shr	edx, 4
	vpinsrb	xmm1, xmm1, byte ptr [rdx + _ZL3HEX], 11
	movzx	r9d, byte ptr [rcx + r8 - 19]
	mov	edx, r9d
	shr	edx, 4
	vpinsrb	xmm1, xmm1, byte ptr [rdx + _ZL3HEX], 12
	movzx	esi, byte ptr [rcx + r8 - 18]
	mov	edx, esi
	shr	edx, 4
	vpinsrb	xmm1, xmm1, byte ptr [rdx + _ZL3HEX], 13
	movzx	edx, byte ptr [rcx + r8 - 17]
	mov	ebp, edx
	shr	ebp, 4
	vpinsrb	xmm1, xmm1, byte ptr [rbp + _ZL3HEX], 14
	movzx	r13d, byte ptr [rcx + r8 - 16]
	mov	ebp, r13d
	shr	ebp, 4
	vpinsrb	xmm1, xmm1, byte ptr [rbp + _ZL3HEX], 15
	mov	rbp, qword ptr [rsp + 56]       # 8-byte Reload
	and	ebp, 15
	movzx	ebp, byte ptr [rbp + _ZL3HEX]
	vmovd	xmm2, ebp
	mov	rbp, qword ptr [rsp + 48]       # 8-byte Reload
	and	ebp, 15
	vpinsrb	xmm2, xmm2, byte ptr [rbp + _ZL3HEX], 1
	mov	rbp, qword ptr [rsp + 40]       # 8-byte Reload
	and	ebp, 15
	vpinsrb	xmm2, xmm2, byte ptr [rbp + _ZL3HEX], 2
	mov	rbp, qword ptr [rsp + 32]       # 8-byte Reload
	and	ebp, 15
	vpinsrb	xmm2, xmm2, byte ptr [rbp + _ZL3HEX], 3
	mov	rbp, qword ptr [rsp + 24]       # 8-byte Reload
	and	ebp, 15
	vpinsrb	xmm2, xmm2, byte ptr [rbp + _ZL3HEX], 4
	mov	rbp, qword ptr [rsp + 16]       # 8-byte Reload
	and	ebp, 15
	vpinsrb	xmm2, xmm2, byte ptr [rbp + _ZL3HEX], 5
	mov	rbp, qword ptr [rsp + 8]        # 8-byte Reload
	and	ebp, 15
	vpinsrb	xmm2, xmm2, byte ptr [rbp + _ZL3HEX], 6
	mov	rbp, qword ptr [rsp]            # 8-byte Reload
	and	ebp, 15
	vpinsrb	xmm2, xmm2, byte ptr [rbp + _ZL3HEX], 7
	mov	rbp, qword ptr [rsp - 8]        # 8-byte Reload
	and	ebp, 15
	vpinsrb	xmm2, xmm2, byte ptr [rbp + _ZL3HEX], 8
	mov	rbp, qword ptr [rsp - 128]      # 8-byte Reload
	and	ebp, 15
	vpinsrb	xmm2, xmm2, byte ptr [rbp + _ZL3HEX], 9
	mov	rbp, qword ptr [rsp - 120]      # 8-byte Reload
	and	ebp, 15
	vpinsrb	xmm2, xmm2, byte ptr [rbp + _ZL3HEX], 10
	mov	rbp, qword ptr [rsp - 112]      # 8-byte Reload
	and	ebp, 15
	vpinsrb	xmm2, xmm2, byte ptr [rbp + _ZL3HEX], 11
	mov	rbp, qword ptr [rsp - 104]      # 8-byte Reload
	and	ebp, 15
	vpinsrb	xmm2, xmm2, byte ptr [rbp + _ZL3HEX], 12
	mov	rbp, qword ptr [rsp - 96]       # 8-byte Reload
	and	ebp, 15
	vpinsrb	xmm2, xmm2, byte ptr [rbp + _ZL3HEX], 13
	mov	rbp, qword ptr [rsp - 16]       # 8-byte Reload
	and	ebp, 15
	vpinsrb	xmm2, xmm2, byte ptr [rbp + _ZL3HEX], 14
	mov	rbp, qword ptr [rsp - 24]       # 8-byte Reload
	and	ebp, 15
	vpinsrb	xmm2, xmm2, byte ptr [rbp + _ZL3HEX], 15
	mov	rbp, qword ptr [rsp - 32]       # 8-byte Reload
	and	ebp, 15
	movzx	ebp, byte ptr [rbp + _ZL3HEX]
	vmovd	xmm3, ebp
	mov	rbp, qword ptr [rsp - 40]       # 8-byte Reload
	and	ebp, 15
	vpinsrb	xmm3, xmm3, byte ptr [rbp + _ZL3HEX], 1
	mov	rbp, qword ptr [rsp - 48]       # 8-byte Reload
	and	ebp, 15
	vpinsrb	xmm3, xmm3, byte ptr [rbp + _ZL3HEX], 2
	mov	rbp, qword ptr [rsp - 56]       # 8-byte Reload
	and	ebp, 15
	vpinsrb	xmm3, xmm3, byte ptr [rbp + _ZL3HEX], 3
	mov	rbp, qword ptr [rsp - 64]       # 8-byte Reload
	and	ebp, 15
	vpinsrb	xmm3, xmm3, byte ptr [rbp + _ZL3HEX], 4
	mov	rbp, qword ptr [rsp - 72]       # 8-byte Reload
	and	ebp, 15
	vpinsrb	xmm3, xmm3, byte ptr [rbp + _ZL3HEX], 5
	mov	rbp, qword ptr [rsp - 80]       # 8-byte Reload
	and	ebp, 15
	vpinsrb	xmm3, xmm3, byte ptr [rbp + _ZL3HEX], 6
	and	r15d, 15
	vpinsrb	xmm3, xmm3, byte ptr [r15 + _ZL3HEX], 7
	and	r14d, 15
	vpinsrb	xmm3, xmm3, byte ptr [r14 + _ZL3HEX], 8
	and	ebx, 15
	vpinsrb	xmm3, xmm3, byte ptr [rbx + _ZL3HEX], 9
	and	r11d, 15
	vpinsrb	xmm3, xmm3, byte ptr [r11 + _ZL3HEX], 10
	and	r10d, 15
	vpinsrb	xmm3, xmm3, byte ptr [r10 + _ZL3HEX], 11
	and	r9d, 15
	vpinsrb	xmm3, xmm3, byte ptr [r9 + _ZL3HEX], 12
	and	esi, 15
	vpinsrb	xmm3, xmm3, byte ptr [rsi + _ZL3HEX], 13
	and	edx, 15
	vpinsrb	xmm3, xmm3, byte ptr [rdx + _ZL3HEX], 14
	and	r13d, 15
	vpinsrb	xmm3, xmm3, byte ptr [r13 + _ZL3HEX], 15
	vinserti128	ymm0, ymm1, xmm0, 1
	vinserti128	ymm1, ymm3, xmm2, 1
	vpunpckhbw	ymm2, ymm0, ymm1        # ymm2 = ymm0[8],ymm1[8],ymm0[9],ymm1[9],ymm0[10],ymm1[10],ymm0[11],ymm1[11],ymm0[12],ymm1[12],ymm0[13],ymm1[13],ymm0[14],ymm1[14],ymm0[15],ymm1[15],ymm0[24],ymm1[24],ymm0[25],ymm1[25],ymm0[26],ymm1[26],ymm0[27],ymm1[27],ymm0[28],ymm1[28],ymm0[29],ymm1[29],ymm0[30],ymm1[30],ymm0[31],ymm1[31]
	vpunpcklbw	ymm0, ymm0, ymm1        # ymm0 = ymm0[0],ymm1[0],ymm0[1],ymm1[1],ymm0[2],ymm1[2],ymm0[3],ymm1[3],ymm0[4],ymm1[4],ymm0[5],ymm1[5],ymm0[6],ymm1[6],ymm0[7],ymm1[7],ymm0[16],ymm1[16],ymm0[17],ymm1[17],ymm0[18],ymm1[18],ymm0[19],ymm1[19],ymm0[20],ymm1[20],ymm0[21],ymm1[21],ymm0[22],ymm1[22],ymm0[23],ymm1[23]
	vperm2i128	ymm1, ymm0, ymm2, 32    # ymm1 = ymm0[0,1],ymm2[0,1]
	vperm2i128	ymm0, ymm0, ymm2, 49    # ymm0 = ymm0[2,3],ymm2[2,3]
	vmovdqu	ymmword ptr [r12 + 2*r8 + 32], ymm0
	vmovdqu	ymmword ptr [r12 + 2*r8], ymm1
	add	r8, 32
	cmp	rax, r8
	jne	.LBB0_11
# %bb.12:
	mov	rsi, qword ptr [rsp - 88]       # 8-byte Reload
	cmp	rsi, rax
	je	.LBB0_17
# %bb.13:
	test	sil, 24
	je	.LBB0_3
.LBB0_14:
	mov	rcx, rax
	mov	rax, rsi
	and	rax, -8
	.p2align	4
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	movzx	edx, byte ptr [rdi + rcx]
	mov	r8d, edx
	shr	r8d, 4
	movzx	r8d, byte ptr [r8 + _ZL3HEX]
	vmovd	xmm0, r8d
	movzx	r8d, byte ptr [rdi + rcx + 1]
	and	edx, 15
	vpinsrb	xmm0, xmm0, byte ptr [rdx + _ZL3HEX], 1
	mov	edx, r8d
	shr	edx, 4
	vpinsrb	xmm0, xmm0, byte ptr [rdx + _ZL3HEX], 2
	movzx	edx, byte ptr [rdi + rcx + 2]
	and	r8d, 15
	vpinsrb	xmm0, xmm0, byte ptr [r8 + _ZL3HEX], 3
	mov	r8d, edx
	shr	r8d, 4
	vpinsrb	xmm0, xmm0, byte ptr [r8 + _ZL3HEX], 4
	movzx	r8d, byte ptr [rdi + rcx + 3]
	and	edx, 15
	vpinsrb	xmm0, xmm0, byte ptr [rdx + _ZL3HEX], 5
	mov	edx, r8d
	shr	edx, 4
	vpinsrb	xmm0, xmm0, byte ptr [rdx + _ZL3HEX], 6
	movzx	edx, byte ptr [rdi + rcx + 4]
	and	r8d, 15
	vpinsrb	xmm0, xmm0, byte ptr [r8 + _ZL3HEX], 7
	mov	r8d, edx
	shr	r8d, 4
	vpinsrb	xmm0, xmm0, byte ptr [r8 + _ZL3HEX], 8
	movzx	r8d, byte ptr [rdi + rcx + 5]
	and	edx, 15
	vpinsrb	xmm0, xmm0, byte ptr [rdx + _ZL3HEX], 9
	mov	edx, r8d
	shr	edx, 4
	vpinsrb	xmm0, xmm0, byte ptr [rdx + _ZL3HEX], 10
	movzx	edx, byte ptr [rdi + rcx + 6]
	and	r8d, 15
	vpinsrb	xmm0, xmm0, byte ptr [r8 + _ZL3HEX], 11
	mov	r8d, edx
	shr	r8d, 4
	vpinsrb	xmm0, xmm0, byte ptr [r8 + _ZL3HEX], 12
	movzx	r8d, byte ptr [rdi + rcx + 7]
	and	edx, 15
	vpinsrb	xmm0, xmm0, byte ptr [rdx + _ZL3HEX], 13
	mov	edx, r8d
	shr	edx, 4
	vpinsrb	xmm0, xmm0, byte ptr [rdx + _ZL3HEX], 14
	and	r8d, 15
	vpinsrb	xmm0, xmm0, byte ptr [r8 + _ZL3HEX], 15
	vmovdqu	xmmword ptr [r12 + 2*rcx], xmm0
	add	rcx, 8
	cmp	rax, rcx
	jne	.LBB0_15
# %bb.16:
	cmp	rsi, rax
	jne	.LBB0_3
	jmp	.LBB0_17
.Lfunc_end0:
	.size	_Z6to_hexPKhmPc, .Lfunc_end0-_Z6to_hexPKhmPc
	.cfi_endproc
                                        # -- End function
	.globl	_Z11to_hex_simdPKhmPc           # -- Begin function _Z11to_hex_simdPKhmPc
	.p2align	4
	.type	_Z11to_hex_simdPKhmPc,@function
_Z11to_hex_simdPKhmPc:                  # @_Z11to_hex_simdPKhmPc
	.cfi_startproc
# %bb.0:
	ret
.Lfunc_end1:
	.size	_Z11to_hex_simdPKhmPc, .Lfunc_end1-_Z11to_hex_simdPKhmPc
	.cfi_endproc
                                        # -- End function
	.globl	_Z14to_hex_highwayPKhmPc        # -- Begin function _Z14to_hex_highwayPKhmPc
	.p2align	4
	.type	_Z14to_hex_highwayPKhmPc,@function
_Z14to_hex_highwayPKhmPc:               # @_Z14to_hex_highwayPKhmPc
	.cfi_startproc
# %bb.0:
	ret
.Lfunc_end2:
	.size	_Z14to_hex_highwayPKhmPc, .Lfunc_end2-_Z14to_hex_highwayPKhmPc
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI3_0:
	.quad	0x41cdcd6500000000              # double 1.0E+9
.LCPI3_1:
	.quad	0x3fe999999999999a              # double 0.80000000000000004
.LCPI3_2:
	.quad	0x4197d78400000000              # double 1.0E+8
.LCPI3_12:
	.quad	-2147483648                     # 0xffffffff80000000
.LCPI3_13:
	.quad	2147483646                      # 0x7ffffffe
.LCPI3_14:
	.quad	2567483615                      # 0x9908b0df
.LCPI3_20:
	.quad	0x7e37e43c8800759c              # double 1.0000000000000001E+300
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI3_3:
	.zero	32,88
.LCPI3_4:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	15                              # 0xf
	.byte	16                              # 0x10
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	24                              # 0x18
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI3_5:
	.byte	32                              # 0x20
	.byte	33                              # 0x21
	.byte	34                              # 0x22
	.byte	35                              # 0x23
	.byte	36                              # 0x24
	.byte	37                              # 0x25
	.byte	38                              # 0x26
	.byte	39                              # 0x27
	.byte	40                              # 0x28
	.byte	41                              # 0x29
	.byte	42                              # 0x2a
	.byte	43                              # 0x2b
	.byte	44                              # 0x2c
	.byte	45                              # 0x2d
	.byte	46                              # 0x2e
	.byte	47                              # 0x2f
	.byte	48                              # 0x30
	.byte	49                              # 0x31
	.byte	50                              # 0x32
	.byte	51                              # 0x33
	.byte	52                              # 0x34
	.byte	53                              # 0x35
	.byte	54                              # 0x36
	.byte	55                              # 0x37
	.byte	56                              # 0x38
	.byte	57                              # 0x39
	.byte	58                              # 0x3a
	.byte	59                              # 0x3b
	.byte	60                              # 0x3c
	.byte	61                              # 0x3d
	.byte	62                              # 0x3e
	.byte	63                              # 0x3f
.LCPI3_6:
	.byte	64                              # 0x40
	.byte	65                              # 0x41
	.byte	66                              # 0x42
	.byte	67                              # 0x43
	.byte	68                              # 0x44
	.byte	69                              # 0x45
	.byte	70                              # 0x46
	.byte	71                              # 0x47
	.byte	72                              # 0x48
	.byte	73                              # 0x49
	.byte	74                              # 0x4a
	.byte	75                              # 0x4b
	.byte	76                              # 0x4c
	.byte	77                              # 0x4d
	.byte	78                              # 0x4e
	.byte	79                              # 0x4f
	.byte	80                              # 0x50
	.byte	81                              # 0x51
	.byte	82                              # 0x52
	.byte	83                              # 0x53
	.byte	84                              # 0x54
	.byte	85                              # 0x55
	.byte	86                              # 0x56
	.byte	87                              # 0x57
	.byte	88                              # 0x58
	.byte	89                              # 0x59
	.byte	90                              # 0x5a
	.byte	91                              # 0x5b
	.byte	92                              # 0x5c
	.byte	93                              # 0x5d
	.byte	94                              # 0x5e
	.byte	95                              # 0x5f
.LCPI3_7:
	.byte	96                              # 0x60
	.byte	97                              # 0x61
	.byte	98                              # 0x62
	.byte	99                              # 0x63
	.byte	100                             # 0x64
	.byte	101                             # 0x65
	.byte	102                             # 0x66
	.byte	103                             # 0x67
	.byte	104                             # 0x68
	.byte	105                             # 0x69
	.byte	106                             # 0x6a
	.byte	107                             # 0x6b
	.byte	108                             # 0x6c
	.byte	109                             # 0x6d
	.byte	110                             # 0x6e
	.byte	111                             # 0x6f
	.byte	112                             # 0x70
	.byte	113                             # 0x71
	.byte	114                             # 0x72
	.byte	115                             # 0x73
	.byte	116                             # 0x74
	.byte	117                             # 0x75
	.byte	118                             # 0x76
	.byte	119                             # 0x77
	.byte	120                             # 0x78
	.byte	121                             # 0x79
	.byte	122                             # 0x7a
	.byte	123                             # 0x7b
	.byte	124                             # 0x7c
	.byte	125                             # 0x7d
	.byte	126                             # 0x7e
	.byte	127                             # 0x7f
.LCPI3_8:
	.byte	128                             # 0x80
	.byte	129                             # 0x81
	.byte	130                             # 0x82
	.byte	131                             # 0x83
	.byte	132                             # 0x84
	.byte	133                             # 0x85
	.byte	134                             # 0x86
	.byte	135                             # 0x87
	.byte	136                             # 0x88
	.byte	137                             # 0x89
	.byte	138                             # 0x8a
	.byte	139                             # 0x8b
	.byte	140                             # 0x8c
	.byte	141                             # 0x8d
	.byte	142                             # 0x8e
	.byte	143                             # 0x8f
	.byte	144                             # 0x90
	.byte	145                             # 0x91
	.byte	146                             # 0x92
	.byte	147                             # 0x93
	.byte	148                             # 0x94
	.byte	149                             # 0x95
	.byte	150                             # 0x96
	.byte	151                             # 0x97
	.byte	152                             # 0x98
	.byte	153                             # 0x99
	.byte	154                             # 0x9a
	.byte	155                             # 0x9b
	.byte	156                             # 0x9c
	.byte	157                             # 0x9d
	.byte	158                             # 0x9e
	.byte	159                             # 0x9f
.LCPI3_9:
	.byte	160                             # 0xa0
	.byte	161                             # 0xa1
	.byte	162                             # 0xa2
	.byte	163                             # 0xa3
	.byte	164                             # 0xa4
	.byte	165                             # 0xa5
	.byte	166                             # 0xa6
	.byte	167                             # 0xa7
	.byte	168                             # 0xa8
	.byte	169                             # 0xa9
	.byte	170                             # 0xaa
	.byte	171                             # 0xab
	.byte	172                             # 0xac
	.byte	173                             # 0xad
	.byte	174                             # 0xae
	.byte	175                             # 0xaf
	.byte	176                             # 0xb0
	.byte	177                             # 0xb1
	.byte	178                             # 0xb2
	.byte	179                             # 0xb3
	.byte	180                             # 0xb4
	.byte	181                             # 0xb5
	.byte	182                             # 0xb6
	.byte	183                             # 0xb7
	.byte	184                             # 0xb8
	.byte	185                             # 0xb9
	.byte	186                             # 0xba
	.byte	187                             # 0xbb
	.byte	188                             # 0xbc
	.byte	189                             # 0xbd
	.byte	190                             # 0xbe
	.byte	191                             # 0xbf
.LCPI3_10:
	.byte	192                             # 0xc0
	.byte	193                             # 0xc1
	.byte	194                             # 0xc2
	.byte	195                             # 0xc3
	.byte	196                             # 0xc4
	.byte	197                             # 0xc5
	.byte	198                             # 0xc6
	.byte	199                             # 0xc7
	.byte	200                             # 0xc8
	.byte	201                             # 0xc9
	.byte	202                             # 0xca
	.byte	203                             # 0xcb
	.byte	204                             # 0xcc
	.byte	205                             # 0xcd
	.byte	206                             # 0xce
	.byte	207                             # 0xcf
	.byte	208                             # 0xd0
	.byte	209                             # 0xd1
	.byte	210                             # 0xd2
	.byte	211                             # 0xd3
	.byte	212                             # 0xd4
	.byte	213                             # 0xd5
	.byte	214                             # 0xd6
	.byte	215                             # 0xd7
	.byte	216                             # 0xd8
	.byte	217                             # 0xd9
	.byte	218                             # 0xda
	.byte	219                             # 0xdb
	.byte	220                             # 0xdc
	.byte	221                             # 0xdd
	.byte	222                             # 0xde
	.byte	223                             # 0xdf
.LCPI3_11:
	.byte	224                             # 0xe0
	.byte	225                             # 0xe1
	.byte	226                             # 0xe2
	.byte	227                             # 0xe3
	.byte	228                             # 0xe4
	.byte	229                             # 0xe5
	.byte	230                             # 0xe6
	.byte	231                             # 0xe7
	.byte	232                             # 0xe8
	.byte	233                             # 0xe9
	.byte	234                             # 0xea
	.byte	235                             # 0xeb
	.byte	236                             # 0xec
	.byte	237                             # 0xed
	.byte	238                             # 0xee
	.byte	239                             # 0xef
	.byte	240                             # 0xf0
	.byte	241                             # 0xf1
	.byte	242                             # 0xf2
	.byte	243                             # 0xf3
	.byte	244                             # 0xf4
	.byte	245                             # 0xf5
	.byte	246                             # 0xf6
	.byte	247                             # 0xf7
	.byte	248                             # 0xf8
	.byte	249                             # 0xf9
	.byte	250                             # 0xfa
	.byte	251                             # 0xfb
	.byte	252                             # 0xfc
	.byte	253                             # 0xfd
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI3_15:
	.quad	-2147483648                     # 0xffffffff80000000
	.quad	-2147483648                     # 0xffffffff80000000
.LCPI3_16:
	.quad	2147483646                      # 0x7ffffffe
	.quad	2147483646                      # 0x7ffffffe
.LCPI3_17:
	.quad	2567483615                      # 0x9908b0df
	.quad	2567483615                      # 0x9908b0df
.LCPI3_18:
	.long	1127219200                      # 0x43300000
	.long	1160773632                      # 0x45300000
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI3_19:
	.quad	0x4330000000000000              # double 4503599627370496
	.quad	0x4530000000000000              # double 1.9342813113834067E+25
	.section	.rodata,"a",@progbits
.LCPI3_21:
	.byte	88                              # 0x58
	.text
	.globl	main
	.p2align	4
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	r13
	.cfi_def_cfa_offset 40
	push	r12
	.cfi_def_cfa_offset 48
	push	rbx
	.cfi_def_cfa_offset 56
	sub	rsp, 5352
	.cfi_def_cfa_offset 5408
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	edi, offset .L.str.24
	call	getenv
	test	rax, rax
	je	.LBB3_3
# %bb.1:
	mov	rdi, rax
	xor	esi, esi
	mov	edx, 10
	call	__isoc23_strtol
	mov	rbx, rax
	vxorpd	xmm0, xmm0, xmm0
	vmovupd	ymmword ptr [rsp + 448], ymm0
	vmovupd	ymmword ptr [rsp + 416], ymm0
	vmovupd	ymmword ptr [rsp + 384], ymm0
	vmovupd	ymmword ptr [rsp + 352], ymm0
	cmp	ebx, 1024
	jb	.LBB3_5
# %bb.2:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, offset .L.str.25
	mov	esi, 58
	mov	edx, 1
	vzeroupper
	call	fwrite@PLT
	jmp	.LBB3_4
.LBB3_3:
	vxorpd	xmm0, xmm0, xmm0
	vmovupd	ymmword ptr [rsp + 448], ymm0
	vmovupd	ymmword ptr [rsp + 416], ymm0
	vmovupd	ymmword ptr [rsp + 384], ymm0
	vmovupd	ymmword ptr [rsp + 352], ymm0
.LBB3_4:
	xor	ebx, ebx
.LBB3_5:
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	mov	ecx, ebx
	shr	ecx, 6
	or	qword ptr [rsp + 8*rcx + 352], rax
	lea	rdx, [rsp + 352]
	mov	esi, 128
	xor	edi, edi
	vzeroupper
	call	sched_setaffinity
	test	eax, eax
	jne	.LBB3_141
.LBB3_6:
	mov	qword ptr [rsp], rbx            # 8-byte Spill
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	rbx, rax
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	qword ptr [rsp + 40], rbx       # 8-byte Spill
	sub	rax, rbx
	vcvtsi2sd	xmm0, xmm15, rax
	vdivsd	xmm0, xmm0, qword ptr [rip + .LCPI3_0]
	vmovsd	xmm1, qword ptr [rip + .LCPI3_1] # xmm1 = [8.0000000000000004E-1,0.0E+0]
	vucomisd	xmm1, xmm0
	jbe	.LBB3_10
# %bb.7:
	xor	eax, eax
	xor	r13d, r13d
	xor	ebp, ebp
	xor	esi, esi
	xor	r14d, r14d
	xor	r15d, r15d
	xor	r12d, r12d
	xor	r10d, r10d
	xor	ebx, ebx
	.p2align	4
.LBB3_8:                                # =>This Inner Loop Header: Depth=1
	#APP

	add	rbx, 1
	add	r10, 1
	add	r12, 1
	add	r15, 1
	add	r14, 1
	add	rsi, 1
	add	rbp, 1
	add	r13, 1

	#NO_APP
	inc	eax
	cmp	eax, 200000
	jne	.LBB3_8
# %bb.9:                                #   in Loop: Header=BB3_8 Depth=1
	mov	qword ptr [rsp + 8], rsi        # 8-byte Spill
	mov	qword ptr [rsp + 16], r10       # 8-byte Spill
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	r10, qword ptr [rsp + 16]       # 8-byte Reload
	mov	rsi, qword ptr [rsp + 8]        # 8-byte Reload
	sub	rax, qword ptr [rsp + 40]       # 8-byte Folded Reload
	vcvtsi2sd	xmm0, xmm15, rax
	vdivsd	xmm0, xmm0, qword ptr [rip + .LCPI3_0]
	vmovsd	xmm1, qword ptr [rip + .LCPI3_1] # xmm1 = [8.0000000000000004E-1,0.0E+0]
	vucomisd	xmm1, xmm0
	mov	eax, 0
	ja	.LBB3_8
.LBB3_10:
	mov	ebx, 12500000
	xor	r15d, r15d
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	r14, rax
	.p2align	4
.LBB3_11:                               # =>This Inner Loop Header: Depth=1
	#APP

	add	r15, 1
	add	r15, 1
	add	r15, 1
	add	r15, 1
	add	r15, 1
	add	r15, 1
	add	r15, 1
	add	r15, 1

	#NO_APP
	dec	rbx
	jne	.LBB3_11
# %bb.12:
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	sub	rax, r14
	vcvtsi2sd	xmm0, xmm15, rax
	vmovsd	xmm2, qword ptr [rip + .LCPI3_0] # xmm2 = [1.0E+9,0.0E+0]
	vdivsd	xmm0, xmm0, xmm2
	vmovsd	xmm1, qword ptr [rip + .LCPI3_2] # xmm1 = [1.0E+8,0.0E+0]
	vdivsd	xmm0, xmm1, xmm0
	vdivsd	xmm0, xmm0, xmm2
	vmovsd	qword ptr [rsp + 16], xmm0      # 8-byte Spill
	mov	edi, offset .L.str
	mov	rsi, qword ptr [rsp]            # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	xor	eax, eax
	call	printf
	mov	edi, offset .L.str.1
	vmovsd	xmm0, qword ptr [rsp + 16]      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mov	esi, 7
	mov	al, 1
	call	printf
	mov	edi, offset .L.str.2
	mov	esi, offset .L.str.30
	mov	edx, 16
	xor	eax, eax
	call	printf
	mov	edi, 24
	call	_Znwm
	mov	r15, rax
	vmovdqu	xmm0, xmmword ptr [rip + .Lconstinit]
	vmovdqu	xmmword ptr [rax], xmm0
	mov	r14, qword ptr [rip + .Lconstinit+16]
	mov	qword ptr [rax + 16], r14
.Ltmp0:
	mov	edi, 48
	call	_Znwm
.Ltmp1:
# %bb.13:
	mov	rbx, rax
	mov	qword ptr [rax + 24], offset .L.str.4
	mov	qword ptr [rax + 32], offset _Z11to_hex_simdPKhmPc
	mov	byte ptr [rax + 40], 0
	vmovdqu	xmm0, xmmword ptr [rip + .Lconstinit]
	vmovdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 16], r14
	mov	esi, 24
	mov	rdi, r15
	call	_ZdlPvm
.Ltmp3:
	mov	edi, 96
	call	_Znwm
.Ltmp4:
# %bb.14:
	mov	r14, rax
	mov	qword ptr [rax + 48], offset .L.str.5
	mov	qword ptr [rax + 56], offset _Z14to_hex_highwayPKhmPc
	mov	byte ptr [rax + 64], 0
	vmovups	ymm0, ymmword ptr [rbx]
	vmovdqu	ymm1, ymmword ptr [rbx + 16]
	vmovups	ymmword ptr [rax], ymm0
	vmovdqu	ymmword ptr [rax + 16], ymm1
	mov	esi, 48
	mov	rdi, rbx
	vzeroupper
	call	_ZdlPvm
	mov	qword ptr [rsp], r14            # 8-byte Spill
	lea	rax, [r14 + 96]
	mov	qword ptr [rsp + 48], rax       # 8-byte Spill
	mov	eax, 1
	vbroadcastsd	ymm0, qword ptr [rip + .LCPI3_12] # ymm0 = [18446744071562067968,18446744071562067968,18446744071562067968,18446744071562067968]
	vmovups	ymmword ptr [rsp + 256], ymm0   # 32-byte Spill
	vbroadcastsd	ymm0, qword ptr [rip + .LCPI3_13] # ymm0 = [2147483646,2147483646,2147483646,2147483646]
	vmovups	ymmword ptr [rsp + 224], ymm0   # 32-byte Spill
	vpbroadcastq	ymm0, qword ptr [rip + .LCPI3_14] # ymm0 = [2567483615,2567483615,2567483615,2567483615]
	vmovdqu	ymmword ptr [rsp + 192], ymm0   # 32-byte Spill
	jmp	.LBB3_17
	.p2align	4
.LBB3_15:                               #   in Loop: Header=BB3_17 Depth=1
	mov	rsi, qword ptr [rax]
	mov	edi, offset .L.str.6
.LBB3_16:                               #   in Loop: Header=BB3_17 Depth=1
	xor	eax, eax
	call	printf
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	inc	rax
	cmp	rax, 3
	je	.LBB3_47
.LBB3_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_21 Depth 2
                                        #     Child Loop BB3_25 Depth 2
                                        #       Child Loop BB3_27 Depth 3
                                        #       Child Loop BB3_29 Depth 3
                                        #     Child Loop BB3_32 Depth 2
                                        #     Child Loop BB3_38 Depth 2
                                        #     Child Loop BB3_45 Depth 2
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
	lea	rbx, [rax + 2*rax]
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	mov	rax, qword ptr [rax + 8*rbx + 8]
	vpxor	xmm0, xmm0, xmm0
	vmovdqu	ymmword ptr [rsp + 288], ymm0
	vmovdqu	ymmword ptr [rsp + 320], ymm0
	mov	byte ptr [rsp + 288], 122
	vpbroadcastb	ymm0, byte ptr [rip + .LCPI3_21] # ymm0 = [88,88,88,88,88,88,88,88,88,88,88,88,88,88,88,88,88,88,88,88,88,88,88,88,88,88,88,88,88,88,88,88]
	vmovdqu	ymmword ptr [rsp + 448], ymm0
	vmovdqu	ymmword ptr [rsp + 416], ymm0
	vmovdqu	ymmword ptr [rsp + 384], ymm0
	vmovdqu	ymmword ptr [rsp + 352], ymm0
.Ltmp6:
	mov	esi, 64
	lea	rdi, [rsp + 288]
	lea	rdx, [rsp + 352]
	vzeroupper
	call	rax
.Ltmp7:
# %bb.18:                               #   in Loop: Header=BB3_17 Depth=1
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	lea	rax, [rax + 8*rbx]
	cmp	byte ptr [rsp + 352], 88
	je	.LBB3_15
# %bb.19:                               #   in Loop: Header=BB3_17 Depth=1
	mov	r13, qword ptr [rax]
	mov	qword ptr [rsp + 24], rax       # 8-byte Spill
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
.Ltmp8:
	mov	edi, 512
	call	_Znwm
.Ltmp9:
# %bb.20:                               #   in Loop: Header=BB3_17 Depth=1
	mov	r14, rax
	vpxor	xmm0, xmm0, xmm0
	vmovdqu	ymmword ptr [rax + 480], ymm0
	vmovdqu	ymmword ptr [rax + 448], ymm0
	vmovdqu	ymmword ptr [rax + 416], ymm0
	vmovdqu	ymmword ptr [rax + 384], ymm0
	vmovdqu	ymmword ptr [rax + 352], ymm0
	vmovdqu	ymmword ptr [rax + 320], ymm0
	vmovdqu	ymmword ptr [rax + 288], ymm0
	vmovdqu	ymmword ptr [rax + 256], ymm0
	vmovaps	ymm0, ymmword ptr [rip + .LCPI3_4] # ymm0 = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]
	vmovups	ymmword ptr [rax], ymm0
	vmovaps	ymm0, ymmword ptr [rip + .LCPI3_5] # ymm0 = [32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63]
	vmovups	ymmword ptr [rax + 32], ymm0
	vmovaps	ymm0, ymmword ptr [rip + .LCPI3_6] # ymm0 = [64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95]
	vmovups	ymmword ptr [rax + 64], ymm0
	vmovaps	ymm0, ymmword ptr [rip + .LCPI3_7] # ymm0 = [96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127]
	vmovups	ymmword ptr [rax + 96], ymm0
	vmovaps	ymm0, ymmword ptr [rip + .LCPI3_8] # ymm0 = [128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159]
	vmovups	ymmword ptr [rax + 128], ymm0
	vmovaps	ymm0, ymmword ptr [rip + .LCPI3_9] # ymm0 = [160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191]
	vmovups	ymmword ptr [rax + 160], ymm0
	vmovaps	ymm0, ymmword ptr [rip + .LCPI3_10] # ymm0 = [192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223]
	vmovups	ymmword ptr [rax + 192], ymm0
	vmovdqa	ymm0, ymmword ptr [rip + .LCPI3_11] # ymm0 = [224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255]
	vmovdqu	ymmword ptr [rax + 224], ymm0
	mov	qword ptr [rsp + 352], 7
	mov	ecx, 7
	mov	eax, 2
	.p2align	4
.LBB3_21:                               #   Parent Loop BB3_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rdx, rcx
	shr	rdx, 30
	xor	rdx, rcx
	imul	rcx, rdx, 1812433253
	add	rcx, rax
	dec	rcx
	mov	edx, ecx
	mov	qword ptr [rsp + 8*rax + 344], rdx
	cmp	rax, 624
	je	.LBB3_23
# %bb.22:                               #   in Loop: Header=BB3_21 Depth=2
	shr	edx, 30
	xor	ecx, edx
	imul	ecx, ecx, 1812433253
	add	ecx, eax
	mov	qword ptr [rsp + 8*rax + 352], rcx
	add	rax, 2
	jmp	.LBB3_21
	.p2align	4
.LBB3_23:                               #   in Loop: Header=BB3_17 Depth=1
	mov	qword ptr [rsp + 5344], 624
	mov	eax, 256
	mov	esi, 624
	mov	ecx, 7
	jmp	.LBB3_25
	.p2align	4
.LBB3_24:                               #   in Loop: Header=BB3_25 Depth=2
	lea	rdx, [rsi + 1]
	mov	qword ptr [rsp + 5344], rdx
	mov	rsi, qword ptr [rsp + 8*rsi + 352]
	mov	rdi, rsi
	shr	rdi, 11
	xor	edi, esi
	mov	esi, edi
	shl	esi, 7
	and	esi, -1658038656
	xor	esi, edi
	mov	edi, esi
	shl	edi, 15
	and	edi, 63176704
	xor	edi, esi
	shr	edi, 18
	xor	edi, esi
	mov	byte ptr [r14 + rax], dil
	inc	rax
	mov	rsi, rdx
	cmp	rax, 512
	je	.LBB3_31
.LBB3_25:                               #   Parent Loop BB3_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_27 Depth 3
                                        #       Child Loop BB3_29 Depth 3
	cmp	rsi, 624
	jb	.LBB3_24
# %bb.26:                               #   in Loop: Header=BB3_25 Depth=2
	vmovq	xmm0, rcx
	vpbroadcastq	ymm0, xmm0
	xor	ecx, ecx
	vmovdqu	ymm9, ymmword ptr [rsp + 256]   # 32-byte Reload
	vmovdqu	ymm10, ymmword ptr [rsp + 224]  # 32-byte Reload
	vmovdqu	ymm11, ymmword ptr [rsp + 192]  # 32-byte Reload
	vpxor	xmm12, xmm12, xmm12
	.p2align	4
.LBB3_27:                               #   Parent Loop BB3_17 Depth=1
                                        #     Parent Loop BB3_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovdqu	ymm3, ymmword ptr [rsp + 8*rcx + 360]
	vmovdqu	ymm2, ymmword ptr [rsp + 8*rcx + 392]
	vmovdqu	ymm1, ymmword ptr [rsp + 8*rcx + 424]
	vpblendd	ymm4, ymm3, ymm0, 192           # ymm4 = ymm3[0,1,2,3,4,5],ymm0[6,7]
	vmovdqu	ymm0, ymmword ptr [rsp + 8*rcx + 456]
	vpermq	ymm4, ymm4, 147                 # ymm4 = ymm4[3,0,1,2]
	vpblendd	ymm5, ymm2, ymm3, 192           # ymm5 = ymm2[0,1,2,3,4,5],ymm3[6,7]
	vpermq	ymm5, ymm5, 147                 # ymm5 = ymm5[3,0,1,2]
	vpblendd	ymm6, ymm1, ymm2, 192           # ymm6 = ymm1[0,1,2,3,4,5],ymm2[6,7]
	vpermq	ymm6, ymm6, 147                 # ymm6 = ymm6[3,0,1,2]
	vpblendd	ymm7, ymm0, ymm1, 192           # ymm7 = ymm0[0,1,2,3,4,5],ymm1[6,7]
	vpermq	ymm7, ymm7, 147                 # ymm7 = ymm7[3,0,1,2]
	vpand	ymm4, ymm9, ymm4
	vpand	ymm5, ymm9, ymm5
	vpand	ymm6, ymm9, ymm6
	vpand	ymm7, ymm9, ymm7
	vpand	ymm8, ymm10, ymm3
	vpor	ymm4, ymm8, ymm4
	vpand	ymm8, ymm10, ymm2
	vpor	ymm5, ymm8, ymm5
	vpand	ymm8, ymm10, ymm1
	vpor	ymm6, ymm8, ymm6
	vpand	ymm8, ymm10, ymm0
	vpor	ymm7, ymm8, ymm7
	vpsrlq	ymm4, ymm4, 1
	vpsrlq	ymm5, ymm5, 1
	vpsrlq	ymm6, ymm6, 1
	vpsrlq	ymm7, ymm7, 1
	vpxor	ymm4, ymm4, ymmword ptr [rsp + 8*rcx + 3528]
	vpxor	ymm5, ymm5, ymmword ptr [rsp + 8*rcx + 3560]
	vpxor	ymm6, ymm6, ymmword ptr [rsp + 8*rcx + 3592]
	vpxor	ymm7, ymm7, ymmword ptr [rsp + 8*rcx + 3624]
	vpsllq	ymm3, ymm3, 63
	vpcmpgtq	ymm3, ymm12, ymm3
	vpand	ymm3, ymm11, ymm3
	vpxor	ymm3, ymm4, ymm3
	vpsllq	ymm2, ymm2, 63
	vpcmpgtq	ymm2, ymm12, ymm2
	vpand	ymm2, ymm11, ymm2
	vpxor	ymm2, ymm5, ymm2
	vpsllq	ymm1, ymm1, 63
	vpcmpgtq	ymm1, ymm12, ymm1
	vpand	ymm1, ymm11, ymm1
	vpxor	ymm1, ymm6, ymm1
	vpsllq	ymm4, ymm0, 63
	vpcmpgtq	ymm4, ymm12, ymm4
	vpand	ymm4, ymm11, ymm4
	vpxor	ymm4, ymm7, ymm4
	vmovdqu	ymmword ptr [rsp + 8*rcx + 352], ymm3
	vmovdqu	ymmword ptr [rsp + 8*rcx + 384], ymm2
	vmovdqu	ymmword ptr [rsp + 8*rcx + 416], ymm1
	vmovdqu	ymmword ptr [rsp + 8*rcx + 448], ymm4
	add	rcx, 16
	cmp	rcx, 224
	jne	.LBB3_27
# %bb.28:                               #   in Loop: Header=BB3_25 Depth=2
	vextracti128	xmm0, ymm0, 1
	vpextrq	rdx, xmm0, 1
	and	rdx, -2147483648
	mov	rsi, qword ptr [rsp + 2152]
	mov	rcx, qword ptr [rsp + 2160]
	mov	edi, esi
	and	edi, 2147483646
	or	rdi, rdx
	shr	rdi
	xor	rdi, qword ptr [rsp + 5320]
	mov	edx, esi
	and	edx, 1
	neg	edx
	mov	r8d, 2567483615
	and	edx, r8d
	xor	rdx, rdi
	mov	qword ptr [rsp + 2144], rdx
	and	rsi, -2147483648
	mov	edx, ecx
	and	edx, 2147483646
	or	rdx, rsi
	shr	rdx
	xor	rdx, qword ptr [rsp + 5328]
	mov	esi, ecx
	and	esi, 1
	neg	esi
	and	esi, r8d
	xor	rsi, rdx
	mov	qword ptr [rsp + 2152], rsi
	and	rcx, -2147483648
	mov	rdx, qword ptr [rsp + 2168]
	mov	esi, edx
	mov	edi, edx
	and	edi, 2147483646
	or	rdi, rcx
	shr	rdi
	xor	rdi, qword ptr [rsp + 5336]
	vmovq	xmm0, rdx
	and	esi, 1
	neg	esi
	mov	r9d, 2567483615
	and	esi, r8d
	xor	rsi, rdi
	mov	qword ptr [rsp + 2160], rsi
	vpbroadcastq	xmm0, xmm0
	mov	ecx, 228
	vmovdqa	xmm3, xmmword ptr [rip + .LCPI3_15] # xmm3 = [18446744071562067968,18446744071562067968]
	vmovdqa	xmm4, xmmword ptr [rip + .LCPI3_16] # xmm4 = [2147483646,2147483646]
	vmovdqa	xmm5, xmmword ptr [rip + .LCPI3_17] # xmm5 = [2567483615,2567483615]
	vpxor	xmm6, xmm6, xmm6
	.p2align	4
.LBB3_29:                               #   Parent Loop BB3_17 Depth=1
                                        #     Parent Loop BB3_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovdqu	xmm1, xmmword ptr [rsp + 8*rcx + 352]
	vpalignr	xmm0, xmm1, xmm0, 8             # xmm0 = xmm0[8,9,10,11,12,13,14,15],xmm1[0,1,2,3,4,5,6,7]
	vpand	xmm0, xmm0, xmm3
	vpand	xmm2, xmm1, xmm4
	vpor	xmm0, xmm2, xmm0
	vpsrlq	xmm0, xmm0, 1
	vpxor	xmm0, xmm0, xmmword ptr [rsp + 8*rcx - 1472]
	vpsllq	xmm2, xmm1, 63
	vpcmpgtq	xmm2, xmm6, xmm2
	vpand	xmm2, xmm2, xmm5
	vpxor	xmm0, xmm0, xmm2
	vmovdqu	xmmword ptr [rsp + 8*rcx + 344], xmm0
	add	rcx, 2
	vmovdqa	xmm0, xmm1
	cmp	rcx, 624
	jne	.LBB3_29
# %bb.30:                               #   in Loop: Header=BB3_25 Depth=2
	mov	rdx, qword ptr [rsp + 5336]
	mov	rcx, -2147483648
	and	rdx, rcx
	mov	rcx, qword ptr [rsp + 352]
	mov	esi, ecx
	and	esi, 2147483646
	or	rsi, rdx
	shr	rsi
	xor	rsi, qword ptr [rsp + 3520]
	mov	edx, ecx
	and	edx, 1
	neg	edx
	and	edx, r9d
	xor	rdx, rsi
	mov	qword ptr [rsp + 5336], rdx
	xor	esi, esi
	jmp	.LBB3_24
	.p2align	4
.LBB3_31:                               #   in Loop: Header=BB3_17 Depth=1
	mov	ebx, 8
	xor	r12d, r12d
	mov	qword ptr [rsp + 40], r13       # 8-byte Spill
	.p2align	4
.LBB3_32:                               #   Parent Loop BB3_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp11:
	mov	rdi, rbx
	vzeroupper
	call	_Znwm
.Ltmp12:
# %bb.33:                               #   in Loop: Header=BB3_32 Depth=2
	mov	rbp, rax
	mov	rdi, rax
	mov	esi, 88
	mov	rdx, rbx
	call	memset@PLT
.Ltmp14:
	mov	rdi, rbx
	call	_Znwm
.Ltmp15:
# %bb.34:                               #   in Loop: Header=BB3_32 Depth=2
	mov	r15, rax
	mov	rdi, rax
	mov	esi, 88
	mov	rdx, rbx
	call	memset@PLT
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, rbp
	call	_Z6to_hexPKhmPc
.Ltmp17:
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r15
	call	qword ptr [rsp + 16]            # 8-byte Folded Reload
.Ltmp18:
# %bb.35:                               #   in Loop: Header=BB3_32 Depth=2
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, rbx
	call	bcmp@PLT
	test	eax, eax
	jne	.LBB3_44
# %bb.36:                               #   in Loop: Header=BB3_32 Depth=2
	mov	rdi, r15
	mov	rsi, rbx
	call	_ZdlPvm
	mov	rdi, rbp
	mov	rsi, rbx
	call	_ZdlPvm
	inc	r12
	add	rbx, 2
	cmp	r12, 301
	jne	.LBB3_32
# %bb.37:                               #   in Loop: Header=BB3_17 Depth=1
	mov	r13, r14
	add	r13, 201
	mov	ebx, 8
	xor	r12d, r12d
	.p2align	4
.LBB3_38:                               #   Parent Loop BB3_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp20:
	mov	rdi, rbx
	call	_Znwm
.Ltmp21:
# %bb.39:                               #   in Loop: Header=BB3_38 Depth=2
	mov	rbp, rax
	mov	rdi, rax
	mov	esi, 88
	mov	rdx, rbx
	call	memset@PLT
.Ltmp23:
	mov	rdi, rbx
	call	_Znwm
.Ltmp24:
# %bb.40:                               #   in Loop: Header=BB3_38 Depth=2
	mov	r15, rax
	mov	rdi, rax
	mov	esi, 88
	mov	rdx, rbx
	call	memset@PLT
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, rbp
	call	_Z6to_hexPKhmPc
.Ltmp26:
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	qword ptr [rsp + 16]            # 8-byte Folded Reload
.Ltmp27:
# %bb.41:                               #   in Loop: Header=BB3_38 Depth=2
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, rbx
	call	bcmp@PLT
	test	eax, eax
	jne	.LBB3_44
# %bb.42:                               #   in Loop: Header=BB3_38 Depth=2
	mov	rdi, r15
	mov	rsi, rbx
	call	_ZdlPvm
	mov	rdi, rbp
	mov	rsi, rbx
	call	_ZdlPvm
	inc	r12
	add	rbx, 2
	cmp	r12, 301
	jne	.LBB3_38
# %bb.43:                               #   in Loop: Header=BB3_17 Depth=1
	mov	esi, 512
	mov	rdi, r14
	call	_ZdlPvm
	mov	rax, qword ptr [rsp + 24]       # 8-byte Reload
	mov	byte ptr [rax + 16], 1
	mov	rsi, qword ptr [rax]
	mov	edi, offset .L.str.7
	jmp	.LBB3_16
	.p2align	4
.LBB3_44:                               #   in Loop: Header=BB3_17 Depth=1
	mov	r13, -1
	.p2align	4
.LBB3_45:                               #   Parent Loop BB3_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzx	ecx, byte ptr [rbp + r13 + 1]
	cmp	cl, byte ptr [r15 + r13 + 1]
	lea	r13, [r13 + 1]
	je	.LBB3_45
# %bb.46:                               #   in Loop: Header=BB3_17 Depth=1
	lea	eax, [rcx - 32]
	cmp	al, 95
	mov	edx, offset .L.str.59
	mov	eax, offset .L.str.58
	cmovb	rdx, rax
	mov	esi, 8
	lea	rdi, [rsp + 288]
                                        # kill: def $ecx killed $ecx killed $rcx
	xor	eax, eax
	call	snprintf
	movzx	ecx, byte ptr [r15 + r13]
	lea	eax, [rcx - 32]
	cmp	al, 95
	mov	edx, offset .L.str.59
	mov	eax, offset .L.str.58
	cmovb	rdx, rax
	mov	esi, 8
	lea	rdi, [rsp + 184]
                                        # kill: def $ecx killed $ecx killed $rcx
	xor	eax, eax
	call	snprintf
	mov	edi, offset .L.str.56
	mov	rsi, qword ptr [rsp + 40]       # 8-byte Reload
	mov	rdx, r12
	mov	rcx, r13
	lea	r8, [rsp + 288]
	lea	r9, [rsp + 184]
	xor	eax, eax
	call	printf
	mov	rdi, r15
	mov	rsi, rbx
	call	_ZdlPvm
	mov	rdi, rbp
	mov	rsi, rbx
	call	_ZdlPvm
	mov	esi, 512
	mov	rdi, r14
	call	_ZdlPvm
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	inc	rax
	cmp	rax, 3
	jne	.LBB3_17
.LBB3_47:
	mov	edi, 10
	call	putchar@PLT
	mov	edi, offset .L.str.9
	mov	esi, offset .L.str.10
	xor	eax, eax
	call	printf
	mov	rbx, qword ptr [rsp]            # 8-byte Reload
	cmp	byte ptr [rbx + 16], 0
	je	.LBB3_48
# %bb.133:
	mov	rsi, qword ptr [rbx]
	mov	edi, offset .L.str.11
	xor	eax, eax
	call	printf
	cmp	byte ptr [rbx + 40], 1
	je	.LBB3_134
.LBB3_49:
	cmp	byte ptr [rbx + 64], 1
	jne	.LBB3_50
.LBB3_135:
	mov	rsi, qword ptr [rbx + 48]
	mov	edi, offset .L.str.11
	xor	eax, eax
	call	printf
	cmp	byte ptr [rbx + 40], 1
	je	.LBB3_136
.LBB3_51:
	cmp	byte ptr [rbx + 64], 1
	jne	.LBB3_53
.LBB3_52:
	mov	rsi, qword ptr [rbx + 48]
	mov	edi, offset .L.str.12
	xor	eax, eax
	call	printf
.LBB3_53:
	mov	edi, offset .L.str.13
	mov	esi, offset .L.str.14
	xor	eax, eax
	call	printf
	cmp	byte ptr [rbx + 16], 1
	jne	.LBB3_54
# %bb.137:
	mov	edi, offset .L.str.11
	mov	esi, offset .L.str.15
	xor	eax, eax
	call	printf
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	cmp	byte ptr [rax + 40], 1
	je	.LBB3_138
.LBB3_55:
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	cmp	byte ptr [rax + 64], 1
	jne	.LBB3_56
.LBB3_139:
	mov	edi, offset .L.str.11
	mov	esi, offset .L.str.15
	xor	eax, eax
	call	printf
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	cmp	byte ptr [rax + 40], 0
	jne	.LBB3_140
.LBB3_57:
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	cmp	byte ptr [rax + 64], 1
	jne	.LBB3_59
.LBB3_58:
	mov	edi, offset .L.str.12
	mov	esi, offset .L.str.16
	xor	eax, eax
	call	printf
.LBB3_59:
	mov	edi, 10
	call	putchar@PLT
	mov	qword ptr [rsp + 352], 42
	mov	ecx, 42
	mov	eax, 2
	.p2align	4
.LBB3_60:                               # =>This Inner Loop Header: Depth=1
	mov	rdx, rcx
	shr	rdx, 30
	xor	rdx, rcx
	imul	rcx, rdx, 1812433253
	add	rcx, rax
	dec	rcx
	mov	edx, ecx
	mov	qword ptr [rsp + 8*rax + 344], rdx
	cmp	rax, 624
	je	.LBB3_62
# %bb.61:                               #   in Loop: Header=BB3_60 Depth=1
	shr	edx, 30
	xor	ecx, edx
	imul	ecx, ecx, 1812433253
	add	ecx, eax
	mov	qword ptr [rsp + 8*rax + 352], rcx
	add	rax, 2
	jmp	.LBB3_60
.LBB3_48:
	cmp	byte ptr [rbx + 40], 1
	jne	.LBB3_49
.LBB3_134:
	mov	rsi, qword ptr [rbx + 24]
	mov	edi, offset .L.str.11
	xor	eax, eax
	call	printf
	cmp	byte ptr [rbx + 64], 1
	je	.LBB3_135
.LBB3_50:
	cmp	byte ptr [rbx + 40], 1
	jne	.LBB3_51
.LBB3_136:
	mov	rsi, qword ptr [rbx + 24]
	mov	edi, offset .L.str.12
	xor	eax, eax
	call	printf
	cmp	byte ptr [rbx + 64], 1
	je	.LBB3_52
	jmp	.LBB3_53
.LBB3_54:
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	cmp	byte ptr [rax + 40], 1
	jne	.LBB3_55
.LBB3_138:
	mov	edi, offset .L.str.11
	mov	esi, offset .L.str.15
	xor	eax, eax
	call	printf
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	cmp	byte ptr [rax + 64], 1
	je	.LBB3_139
.LBB3_56:
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	cmp	byte ptr [rax + 40], 0
	je	.LBB3_57
.LBB3_140:
	mov	edi, offset .L.str.12
	mov	esi, offset .L.str.16
	xor	eax, eax
	call	printf
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	cmp	byte ptr [rax + 64], 1
	je	.LBB3_58
	jmp	.LBB3_59
.LBB3_62:
	mov	qword ptr [rsp + 5344], 624
	xor	r12d, r12d
	jmp	.LBB3_64
	.p2align	4
.LBB3_63:                               #   in Loop: Header=BB3_64 Depth=1
	add	r12, 16
	cmp	r12, 80
	je	.LBB3_132
.LBB3_64:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_71 Depth 2
                                        #       Child Loop BB3_73 Depth 3
                                        #       Child Loop BB3_75 Depth 3
                                        #     Child Loop BB3_92 Depth 2
                                        #       Child Loop BB3_96 Depth 3
                                        #       Child Loop BB3_99 Depth 3
                                        #       Child Loop BB3_102 Depth 3
                                        #       Child Loop BB3_105 Depth 3
                                        #       Child Loop BB3_108 Depth 3
                                        #       Child Loop BB3_111 Depth 3
                                        #       Child Loop BB3_114 Depth 3
	mov	r13, qword ptr [r12 + .L__const.main.sizes]
	test	r13, r13
	js	.LBB3_144
# %bb.65:                               #   in Loop: Header=BB3_64 Depth=1
	mov	rax, qword ptr [r12 + .L__const.main.sizes+8]
	mov	qword ptr [rsp + 72], r12       # 8-byte Spill
	mov	qword ptr [rsp + 64], rax       # 8-byte Spill
	je	.LBB3_80
# %bb.66:                               #   in Loop: Header=BB3_64 Depth=1
.Ltmp29:
	mov	rdi, r13
	call	_Znwm
.Ltmp30:
# %bb.67:                               #   in Loop: Header=BB3_64 Depth=1
	mov	r15, rax
	lea	rbp, [rax + r13]
	mov	byte ptr [rax], 0
	mov	rdi, rax
	inc	rdi
	cmp	r13, 1
	je	.LBB3_69
# %bb.68:                               #   in Loop: Header=BB3_64 Depth=1
	lea	rdx, [r13 - 1]
	xor	esi, esi
	call	memset@PLT
	mov	rdi, rbp
.LBB3_69:                               #   in Loop: Header=BB3_64 Depth=1
	mov	rcx, qword ptr [rsp + 5344]
	mov	rax, r15
	jmp	.LBB3_71
	.p2align	4
.LBB3_70:                               #   in Loop: Header=BB3_71 Depth=2
	lea	rdx, [rcx + 1]
	mov	qword ptr [rsp + 5344], rdx
	mov	rcx, qword ptr [rsp + 8*rcx + 352]
	mov	rsi, rcx
	shr	rsi, 11
	xor	esi, ecx
	mov	ecx, esi
	shl	ecx, 7
	and	ecx, -1658038656
	xor	ecx, esi
	mov	esi, ecx
	shl	esi, 15
	and	esi, 63176704
	xor	esi, ecx
	shr	esi, 18
	xor	esi, ecx
	mov	byte ptr [rax], sil
	inc	rax
	mov	rcx, rdx
	cmp	rax, rdi
	je	.LBB3_77
.LBB3_71:                               #   Parent Loop BB3_64 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_73 Depth 3
                                        #       Child Loop BB3_75 Depth 3
	cmp	rcx, 624
	jb	.LBB3_70
# %bb.72:                               #   in Loop: Header=BB3_71 Depth=2
	vpbroadcastq	ymm0, qword ptr [rsp + 352]
	xor	ecx, ecx
	vmovdqu	ymm9, ymmword ptr [rsp + 256]   # 32-byte Reload
	vmovdqu	ymm10, ymmword ptr [rsp + 224]  # 32-byte Reload
	vmovdqu	ymm11, ymmword ptr [rsp + 192]  # 32-byte Reload
	vpxor	xmm12, xmm12, xmm12
	.p2align	4
.LBB3_73:                               #   Parent Loop BB3_64 Depth=1
                                        #     Parent Loop BB3_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovdqu	ymm3, ymmword ptr [rsp + 8*rcx + 360]
	vmovdqu	ymm2, ymmword ptr [rsp + 8*rcx + 392]
	vmovdqu	ymm1, ymmword ptr [rsp + 8*rcx + 424]
	vpblendd	ymm4, ymm3, ymm0, 192           # ymm4 = ymm3[0,1,2,3,4,5],ymm0[6,7]
	vmovdqu	ymm0, ymmword ptr [rsp + 8*rcx + 456]
	vpermq	ymm4, ymm4, 147                 # ymm4 = ymm4[3,0,1,2]
	vpblendd	ymm5, ymm2, ymm3, 192           # ymm5 = ymm2[0,1,2,3,4,5],ymm3[6,7]
	vpermq	ymm5, ymm5, 147                 # ymm5 = ymm5[3,0,1,2]
	vpblendd	ymm6, ymm1, ymm2, 192           # ymm6 = ymm1[0,1,2,3,4,5],ymm2[6,7]
	vpermq	ymm6, ymm6, 147                 # ymm6 = ymm6[3,0,1,2]
	vpblendd	ymm7, ymm0, ymm1, 192           # ymm7 = ymm0[0,1,2,3,4,5],ymm1[6,7]
	vpermq	ymm7, ymm7, 147                 # ymm7 = ymm7[3,0,1,2]
	vpand	ymm4, ymm9, ymm4
	vpand	ymm5, ymm9, ymm5
	vpand	ymm6, ymm9, ymm6
	vpand	ymm7, ymm9, ymm7
	vpand	ymm8, ymm10, ymm3
	vpor	ymm4, ymm8, ymm4
	vpand	ymm8, ymm10, ymm2
	vpor	ymm5, ymm8, ymm5
	vpand	ymm8, ymm10, ymm1
	vpor	ymm6, ymm8, ymm6
	vpand	ymm8, ymm10, ymm0
	vpor	ymm7, ymm8, ymm7
	vpsrlq	ymm4, ymm4, 1
	vpsrlq	ymm5, ymm5, 1
	vpsrlq	ymm6, ymm6, 1
	vpsrlq	ymm7, ymm7, 1
	vpxor	ymm4, ymm4, ymmword ptr [rsp + 8*rcx + 3528]
	vpxor	ymm5, ymm5, ymmword ptr [rsp + 8*rcx + 3560]
	vpxor	ymm6, ymm6, ymmword ptr [rsp + 8*rcx + 3592]
	vpxor	ymm7, ymm7, ymmword ptr [rsp + 8*rcx + 3624]
	vpsllq	ymm3, ymm3, 63
	vpcmpgtq	ymm3, ymm12, ymm3
	vpand	ymm3, ymm11, ymm3
	vpxor	ymm3, ymm4, ymm3
	vpsllq	ymm2, ymm2, 63
	vpcmpgtq	ymm2, ymm12, ymm2
	vpand	ymm2, ymm11, ymm2
	vpxor	ymm2, ymm5, ymm2
	vpsllq	ymm1, ymm1, 63
	vpcmpgtq	ymm1, ymm12, ymm1
	vpand	ymm1, ymm11, ymm1
	vpxor	ymm1, ymm6, ymm1
	vpsllq	ymm4, ymm0, 63
	vpcmpgtq	ymm4, ymm12, ymm4
	vpand	ymm4, ymm11, ymm4
	vpxor	ymm4, ymm7, ymm4
	vmovdqu	ymmword ptr [rsp + 8*rcx + 352], ymm3
	vmovdqu	ymmword ptr [rsp + 8*rcx + 384], ymm2
	vmovdqu	ymmword ptr [rsp + 8*rcx + 416], ymm1
	vmovdqu	ymmword ptr [rsp + 8*rcx + 448], ymm4
	add	rcx, 16
	cmp	rcx, 224
	jne	.LBB3_73
# %bb.74:                               #   in Loop: Header=BB3_71 Depth=2
	vextracti128	xmm0, ymm0, 1
	vpextrq	rdx, xmm0, 1
	and	rdx, -2147483648
	mov	rsi, qword ptr [rsp + 2152]
	mov	rcx, qword ptr [rsp + 2160]
	mov	r8d, esi
	and	r8d, 2147483646
	or	r8, rdx
	shr	r8
	xor	r8, qword ptr [rsp + 5320]
	mov	edx, esi
	and	edx, 1
	neg	edx
	mov	r9d, 2567483615
	and	edx, r9d
	xor	rdx, r8
	mov	qword ptr [rsp + 2144], rdx
	and	rsi, -2147483648
	mov	edx, ecx
	and	edx, 2147483646
	or	rdx, rsi
	shr	rdx
	xor	rdx, qword ptr [rsp + 5328]
	mov	esi, ecx
	and	esi, 1
	neg	esi
	and	esi, r9d
	xor	rsi, rdx
	mov	qword ptr [rsp + 2152], rsi
	and	rcx, -2147483648
	mov	rdx, qword ptr [rsp + 2168]
	mov	esi, edx
	mov	r8d, edx
	and	r8d, 2147483646
	or	r8, rcx
	shr	r8
	xor	r8, qword ptr [rsp + 5336]
	vmovq	xmm0, rdx
	and	esi, 1
	neg	esi
	mov	r10d, 2567483615
	and	esi, r9d
	xor	rsi, r8
	mov	qword ptr [rsp + 2160], rsi
	vpbroadcastq	xmm0, xmm0
	mov	ecx, 228
	vmovdqa	xmm3, xmmword ptr [rip + .LCPI3_15] # xmm3 = [18446744071562067968,18446744071562067968]
	vmovdqa	xmm4, xmmword ptr [rip + .LCPI3_16] # xmm4 = [2147483646,2147483646]
	vmovdqa	xmm5, xmmword ptr [rip + .LCPI3_17] # xmm5 = [2567483615,2567483615]
	vpxor	xmm6, xmm6, xmm6
	.p2align	4
.LBB3_75:                               #   Parent Loop BB3_64 Depth=1
                                        #     Parent Loop BB3_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovdqu	xmm1, xmmword ptr [rsp + 8*rcx + 352]
	vpalignr	xmm0, xmm1, xmm0, 8             # xmm0 = xmm0[8,9,10,11,12,13,14,15],xmm1[0,1,2,3,4,5,6,7]
	vpand	xmm0, xmm0, xmm3
	vpand	xmm2, xmm1, xmm4
	vpor	xmm0, xmm2, xmm0
	vpsrlq	xmm0, xmm0, 1
	vpxor	xmm0, xmm0, xmmword ptr [rsp + 8*rcx - 1472]
	vpsllq	xmm2, xmm1, 63
	vpcmpgtq	xmm2, xmm6, xmm2
	vpand	xmm2, xmm2, xmm5
	vpxor	xmm0, xmm0, xmm2
	vmovdqu	xmmword ptr [rsp + 8*rcx + 344], xmm0
	add	rcx, 2
	vmovdqa	xmm0, xmm1
	cmp	rcx, 624
	jne	.LBB3_75
# %bb.76:                               #   in Loop: Header=BB3_71 Depth=2
	mov	rcx, qword ptr [rsp + 5336]
	mov	rdx, -2147483648
	and	rcx, rdx
	mov	rdx, qword ptr [rsp + 352]
	mov	esi, edx
	and	esi, 2147483646
	or	rsi, rcx
	shr	rsi
	xor	rsi, qword ptr [rsp + 3520]
	and	edx, 1
	neg	edx
	and	edx, r10d
	xor	rdx, rsi
	mov	qword ptr [rsp + 5336], rdx
	xor	ecx, ecx
	jmp	.LBB3_70
	.p2align	4
.LBB3_77:                               #   in Loop: Header=BB3_64 Depth=1
	mov	rbx, r13
	add	rbx, r13
	js	.LBB3_146
# %bb.78:                               #   in Loop: Header=BB3_64 Depth=1
.Ltmp32:
	mov	rdi, rbx
	vzeroupper
	call	_Znwm
.Ltmp33:
# %bb.79:                               #   in Loop: Header=BB3_64 Depth=1
	mov	r14, rax
	mov	qword ptr [rsp + 32], rbp       # 8-byte Spill
	add	rax, rbx
	mov	qword ptr [rsp + 56], rax       # 8-byte Spill
	mov	byte ptr [r14], 0
	mov	rdi, r14
	inc	rdi
	dec	rbx
	xor	esi, esi
	mov	rdx, rbx
	call	memset@PLT
	jmp	.LBB3_81
	.p2align	4
.LBB3_80:                               #   in Loop: Header=BB3_64 Depth=1
	mov	qword ptr [rsp + 32], 0         # 8-byte Folded Spill
	xor	r15d, r15d
	xor	r14d, r14d
	mov	qword ptr [rsp + 56], 0         # 8-byte Folded Spill
.LBB3_81:                               #   in Loop: Header=BB3_64 Depth=1
	xor	ecx, ecx
	xor	ebx, ebx
	xor	ebp, ebp
	mov	qword ptr [rsp + 8], 0          # 8-byte Folded Spill
	jmp	.LBB3_92
	.p2align	4
.LBB3_82:                               #   in Loop: Header=BB3_92 Depth=2
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	sub	rax, qword ptr [rsp + 80]       # 8-byte Folded Reload
	vcvtsi2sd	xmm0, xmm15, rax
	mov	rax, qword ptr [rsp + 88]       # 8-byte Reload
	sub	rax, qword ptr [rsp + 96]       # 8-byte Folded Reload
	vcvtsi2sd	xmm1, xmm15, rax
	mov	rax, qword ptr [rsp + 104]      # 8-byte Reload
	sub	rax, qword ptr [rsp + 112]      # 8-byte Folded Reload
	vcvtsi2sd	xmm2, xmm15, rax
	mov	rax, qword ptr [rsp + 120]      # 8-byte Reload
	sub	rax, qword ptr [rsp + 128]      # 8-byte Folded Reload
	vcvtsi2sd	xmm3, xmm15, rax
	mov	rax, qword ptr [rsp + 136]      # 8-byte Reload
	sub	rax, qword ptr [rsp + 144]      # 8-byte Folded Reload
	vcvtsi2sd	xmm4, xmm15, rax
	mov	rax, qword ptr [rsp + 152]      # 8-byte Reload
	sub	rax, qword ptr [rsp + 160]      # 8-byte Folded Reload
	vcvtsi2sd	xmm5, xmm15, rax
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	imul	rax, r13
	vmovq	xmm6, rax
	mov	rax, qword ptr [rsp + 168]      # 8-byte Reload
	sub	rax, qword ptr [rsp + 176]      # 8-byte Folded Reload
	vcvtsi2sd	xmm7, xmm15, rax
	vpunpckldq	xmm6, xmm6, xmmword ptr [rip + .LCPI3_18] # xmm6 = xmm6[0],mem[0],xmm6[1],mem[1]
	vsubpd	xmm6, xmm6, xmmword ptr [rip + .LCPI3_19]
	vshufpd	xmm8, xmm6, xmm6, 1             # xmm8 = xmm6[1,0]
	vaddsd	xmm6, xmm8, xmm6
	vmovsd	xmm8, qword ptr [rip + .LCPI3_0] # xmm8 = [1.0E+9,0.0E+0]
	vdivsd	xmm0, xmm0, xmm8
	vmulsd	xmm0, xmm8, xmm0
	vdivsd	xmm0, xmm0, xmm6
	vdivsd	xmm1, xmm1, xmm8
	vmulsd	xmm1, xmm8, xmm1
	vdivsd	xmm1, xmm1, xmm6
	vdivsd	xmm2, xmm2, xmm8
	vmulsd	xmm2, xmm8, xmm2
	vdivsd	xmm2, xmm2, xmm6
	vdivsd	xmm3, xmm3, xmm8
	vmulsd	xmm3, xmm8, xmm3
	vdivsd	xmm3, xmm3, xmm6
	vdivsd	xmm4, xmm4, xmm8
	vmulsd	xmm4, xmm8, xmm4
	vdivsd	xmm4, xmm4, xmm6
	vdivsd	xmm5, xmm5, xmm8
	vmulsd	xmm5, xmm8, xmm5
	vdivsd	xmm5, xmm5, xmm6
	vdivsd	xmm7, xmm7, xmm8
	vmulsd	xmm7, xmm8, xmm7
	vdivsd	xmm6, xmm7, xmm6
	vminsd	xmm6, xmm6, qword ptr [rip + .LCPI3_20]
	vminsd	xmm5, xmm5, xmm6
	vminsd	xmm4, xmm4, xmm5
	vminsd	xmm3, xmm3, xmm4
	vminsd	xmm2, xmm2, xmm3
	vminsd	xmm1, xmm1, xmm2
	vminsd	xmm0, xmm0, xmm1
	mov	rbx, qword ptr [rsp + 24]       # 8-byte Reload
	mov	rcx, qword ptr [rsp + 40]       # 8-byte Reload
.LBB3_83:                               #   in Loop: Header=BB3_92 Depth=2
	cmp	rbp, rbx
	je	.LBB3_85
# %bb.84:                               #   in Loop: Header=BB3_92 Depth=2
	vmovsd	qword ptr [rbp], xmm0
	add	rbp, 8
	add	rcx, 24
	cmp	rcx, 72
	je	.LBB3_116
.LBB3_92:                               #   Parent Loop BB3_64 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_96 Depth 3
                                        #       Child Loop BB3_99 Depth 3
                                        #       Child Loop BB3_102 Depth 3
                                        #       Child Loop BB3_105 Depth 3
                                        #       Child Loop BB3_108 Depth 3
                                        #       Child Loop BB3_111 Depth 3
                                        #       Child Loop BB3_114 Depth 3
	vpxor	xmm0, xmm0, xmm0
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	cmp	byte ptr [rax + rcx + 16], 1
	jne	.LBB3_83
# %bb.93:                               #   in Loop: Header=BB3_92 Depth=2
	mov	qword ptr [rsp + 24], rbx       # 8-byte Spill
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	mov	qword ptr [rsp + 40], rcx       # 8-byte Spill
	mov	r12, qword ptr [rax + rcx + 8]
	mov	ebx, 1
	cmp	r13, 67108863
	ja	.LBB3_95
# %bb.94:                               #   in Loop: Header=BB3_92 Depth=2
	mov	eax, 67108864
	xor	edx, edx
	div	r13d
	mov	ebx, eax
.LBB3_95:                               #   in Loop: Header=BB3_92 Depth=2
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	qword ptr [rsp + 176], rax      # 8-byte Spill
	mov	qword ptr [rsp + 16], rbx       # 8-byte Spill
	.p2align	4
.LBB3_96:                               #   Parent Loop BB3_64 Depth=1
                                        #     Parent Loop BB3_92 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	#APP
	#NO_APP
.Ltmp38:
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, r14
	call	r12
.Ltmp39:
# %bb.97:                               #   in Loop: Header=BB3_96 Depth=3
	dec	rbx
	jne	.LBB3_96
# %bb.98:                               #   in Loop: Header=BB3_92 Depth=2
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	qword ptr [rsp + 168], rax      # 8-byte Spill
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	qword ptr [rsp + 160], rax      # 8-byte Spill
	mov	rbx, qword ptr [rsp + 16]       # 8-byte Reload
	.p2align	4
.LBB3_99:                               #   Parent Loop BB3_64 Depth=1
                                        #     Parent Loop BB3_92 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	#APP
	#NO_APP
.Ltmp41:
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, r14
	call	r12
.Ltmp42:
# %bb.100:                              #   in Loop: Header=BB3_99 Depth=3
	dec	rbx
	jne	.LBB3_99
# %bb.101:                              #   in Loop: Header=BB3_92 Depth=2
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	qword ptr [rsp + 152], rax      # 8-byte Spill
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	qword ptr [rsp + 144], rax      # 8-byte Spill
	mov	rbx, qword ptr [rsp + 16]       # 8-byte Reload
	.p2align	4
.LBB3_102:                              #   Parent Loop BB3_64 Depth=1
                                        #     Parent Loop BB3_92 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	#APP
	#NO_APP
.Ltmp44:
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, r14
	call	r12
.Ltmp45:
# %bb.103:                              #   in Loop: Header=BB3_102 Depth=3
	dec	rbx
	jne	.LBB3_102
# %bb.104:                              #   in Loop: Header=BB3_92 Depth=2
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	qword ptr [rsp + 136], rax      # 8-byte Spill
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	qword ptr [rsp + 128], rax      # 8-byte Spill
	mov	rbx, qword ptr [rsp + 16]       # 8-byte Reload
	.p2align	4
.LBB3_105:                              #   Parent Loop BB3_64 Depth=1
                                        #     Parent Loop BB3_92 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	#APP
	#NO_APP
.Ltmp47:
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, r14
	call	r12
.Ltmp48:
# %bb.106:                              #   in Loop: Header=BB3_105 Depth=3
	dec	rbx
	jne	.LBB3_105
# %bb.107:                              #   in Loop: Header=BB3_92 Depth=2
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	qword ptr [rsp + 120], rax      # 8-byte Spill
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	qword ptr [rsp + 112], rax      # 8-byte Spill
	mov	rbx, qword ptr [rsp + 16]       # 8-byte Reload
	.p2align	4
.LBB3_108:                              #   Parent Loop BB3_64 Depth=1
                                        #     Parent Loop BB3_92 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	#APP
	#NO_APP
.Ltmp50:
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, r14
	call	r12
.Ltmp51:
# %bb.109:                              #   in Loop: Header=BB3_108 Depth=3
	dec	rbx
	jne	.LBB3_108
# %bb.110:                              #   in Loop: Header=BB3_92 Depth=2
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	qword ptr [rsp + 104], rax      # 8-byte Spill
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	qword ptr [rsp + 96], rax       # 8-byte Spill
	mov	rbx, qword ptr [rsp + 16]       # 8-byte Reload
	.p2align	4
.LBB3_111:                              #   Parent Loop BB3_64 Depth=1
                                        #     Parent Loop BB3_92 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	#APP
	#NO_APP
.Ltmp53:
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, r14
	call	r12
.Ltmp54:
# %bb.112:                              #   in Loop: Header=BB3_111 Depth=3
	dec	rbx
	jne	.LBB3_111
# %bb.113:                              #   in Loop: Header=BB3_92 Depth=2
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	qword ptr [rsp + 88], rax       # 8-byte Spill
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	qword ptr [rsp + 80], rax       # 8-byte Spill
	mov	rbx, qword ptr [rsp + 16]       # 8-byte Reload
	.p2align	4
.LBB3_114:                              #   Parent Loop BB3_64 Depth=1
                                        #     Parent Loop BB3_92 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	#APP
	#NO_APP
.Ltmp56:
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, r14
	call	r12
.Ltmp57:
# %bb.115:                              #   in Loop: Header=BB3_114 Depth=3
	dec	rbx
	jne	.LBB3_114
	jmp	.LBB3_82
	.p2align	4
.LBB3_85:                               #   in Loop: Header=BB3_92 Depth=2
	mov	rbp, rbx
	sub	rbp, qword ptr [rsp + 8]        # 8-byte Folded Reload
	movabs	rax, 9223372036854775800
	cmp	rbp, rax
	je	.LBB3_142
# %bb.86:                               #   in Loop: Header=BB3_92 Depth=2
	vmovsd	qword ptr [rsp + 16], xmm0      # 8-byte Spill
	mov	qword ptr [rsp + 40], rcx       # 8-byte Spill
	mov	qword ptr [rsp + 24], rbx       # 8-byte Spill
	mov	r12, rbp
	sar	r12, 3
	cmp	r12, 1
	adc	r12, r12
	movabs	rax, 1152921504606846975
	cmp	r12, rax
	cmovae	r12, rax
	lea	rdi, [8*r12]
.Ltmp59:
	call	_Znwm
.Ltmp60:
# %bb.87:                               #   in Loop: Header=BB3_92 Depth=2
	mov	rbx, rax
	vmovsd	xmm0, qword ptr [rsp + 16]      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vmovsd	qword ptr [rax + rbp], xmm0
	test	rbp, rbp
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	jle	.LBB3_89
# %bb.88:                               #   in Loop: Header=BB3_92 Depth=2
	mov	rdi, rbx
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
	mov	rsi, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rdx, rbp
	call	memcpy@PLT
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
.LBB3_89:                               #   in Loop: Header=BB3_92 Depth=2
	test	rax, rax
	je	.LBB3_91
# %bb.90:                               #   in Loop: Header=BB3_92 Depth=2
	mov	rdi, rax
	mov	rsi, rbp
	call	_ZdlPvm
.LBB3_91:                               #   in Loop: Header=BB3_92 Depth=2
	add	rbp, rbx
	lea	rax, [rbx + 8*r12]
	mov	qword ptr [rsp + 8], rbx        # 8-byte Spill
	mov	rbx, rax
	mov	rcx, qword ptr [rsp + 40]       # 8-byte Reload
	add	rbp, 8
	add	rcx, 24
	cmp	rcx, 72
	jne	.LBB3_92
.LBB3_116:                              #   in Loop: Header=BB3_64 Depth=1
	mov	rbp, rbx
	mov	edi, offset .L.str.9
	mov	rsi, qword ptr [rsp + 64]       # 8-byte Reload
	xor	eax, eax
	call	printf
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	cmp	byte ptr [rax + 16], 0
	mov	r13, qword ptr [rsp + 8]        # 8-byte Reload
	je	.LBB3_118
# %bb.117:                              #   in Loop: Header=BB3_64 Depth=1
	vmovsd	xmm0, qword ptr [r13]           # xmm0 = mem[0],zero
	mov	edi, offset .L.str.22
	mov	al, 1
	call	printf
.LBB3_118:                              #   in Loop: Header=BB3_64 Depth=1
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	cmp	byte ptr [rax + 40], 1
	mov	rbx, qword ptr [rsp + 32]       # 8-byte Reload
	mov	r12, qword ptr [rsp + 72]       # 8-byte Reload
	jne	.LBB3_119
# %bb.123:                              #   in Loop: Header=BB3_64 Depth=1
	vmovsd	xmm0, qword ptr [r13 + 8]       # xmm0 = mem[0],zero
	mov	edi, offset .L.str.22
	mov	al, 1
	call	printf
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	cmp	byte ptr [rax + 64], 1
	je	.LBB3_124
.LBB3_120:                              #   in Loop: Header=BB3_64 Depth=1
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	cmp	byte ptr [rax + 40], 0
	je	.LBB3_121
.LBB3_125:                              #   in Loop: Header=BB3_64 Depth=1
	vmovsd	xmm0, qword ptr [r13]           # xmm0 = mem[0],zero
	vdivsd	xmm0, xmm0, qword ptr [r13 + 8]
	mov	edi, offset .L.str.23
	mov	al, 1
	call	printf
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	cmp	byte ptr [rax + 64], 1
	je	.LBB3_122
.LBB3_126:                              #   in Loop: Header=BB3_64 Depth=1
	mov	edi, 10
	call	putchar@PLT
	test	r13, r13
	jne	.LBB3_127
	.p2align	4
# %bb.128:                              #   in Loop: Header=BB3_64 Depth=1
	test	r14, r14
	je	.LBB3_130
.LBB3_129:                              #   in Loop: Header=BB3_64 Depth=1
	mov	rsi, qword ptr [rsp + 56]       # 8-byte Reload
	sub	rsi, r14
	mov	rdi, r14
	call	_ZdlPvm
.LBB3_130:                              #   in Loop: Header=BB3_64 Depth=1
	test	r15, r15
	je	.LBB3_63
# %bb.131:                              #   in Loop: Header=BB3_64 Depth=1
	sub	rbx, r15
	mov	rdi, r15
	mov	rsi, rbx
	call	_ZdlPvm
	jmp	.LBB3_63
	.p2align	4
.LBB3_119:                              #   in Loop: Header=BB3_64 Depth=1
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	cmp	byte ptr [rax + 64], 1
	jne	.LBB3_120
.LBB3_124:                              #   in Loop: Header=BB3_64 Depth=1
	vmovsd	xmm0, qword ptr [r13 + 16]      # xmm0 = mem[0],zero
	mov	edi, offset .L.str.22
	mov	al, 1
	call	printf
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	cmp	byte ptr [rax + 40], 0
	jne	.LBB3_125
.LBB3_121:                              #   in Loop: Header=BB3_64 Depth=1
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	cmp	byte ptr [rax + 64], 1
	jne	.LBB3_126
.LBB3_122:                              #   in Loop: Header=BB3_64 Depth=1
	vmovsd	xmm0, qword ptr [r13]           # xmm0 = mem[0],zero
	vdivsd	xmm0, xmm0, qword ptr [r13 + 16]
	mov	edi, offset .L.str.23
	mov	al, 1
	call	printf
	mov	edi, 10
	call	putchar@PLT
.LBB3_127:                              #   in Loop: Header=BB3_64 Depth=1
	mov	rsi, rbp
	sub	rsi, r13
	mov	rdi, r13
	call	_ZdlPvm
	test	r14, r14
	jne	.LBB3_129
	jmp	.LBB3_130
.LBB3_132:
	mov	esi, 96
	mov	rdi, qword ptr [rsp]            # 8-byte Reload
	call	_ZdlPvm
	xor	eax, eax
	add	rsp, 5352
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	r12
	.cfi_def_cfa_offset 40
	pop	r13
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.LBB3_141:
	.cfi_def_cfa_offset 5408
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, offset .L.str.26
	mov	edx, ebx
	xor	eax, eax
	call	fprintf
	jmp	.LBB3_6
.LBB3_142:
.Ltmp62:
	mov	edi, offset .L.str.60
	mov	rbp, qword ptr [rsp + 32]       # 8-byte Reload
	call	_ZSt20__throw_length_errorPKc
.Ltmp63:
# %bb.143:
.LBB3_144:
.Ltmp65:
	mov	edi, offset .L.str.57
	call	_ZSt20__throw_length_errorPKc
.Ltmp66:
# %bb.145:
.LBB3_146:
.Ltmp35:
	mov	edi, offset .L.str.57
	vzeroupper
	call	_ZSt20__throw_length_errorPKc
.Ltmp36:
# %bb.147:
.LBB3_148:
.Ltmp5:
	mov	r12, rax
	mov	rax, rbx
	add	rax, 48
	mov	qword ptr [rsp + 48], rax       # 8-byte Spill
	mov	qword ptr [rsp], rbx            # 8-byte Spill
	jmp	.LBB3_182
.LBB3_149:
.Ltmp2:
	mov	r12, rax
	mov	qword ptr [rsp], r15            # 8-byte Spill
	add	r15, 24
	mov	qword ptr [rsp + 48], r15       # 8-byte Spill
	jmp	.LBB3_182
.LBB3_150:
.Ltmp34:
	jmp	.LBB3_152
.LBB3_151:
.Ltmp37:
.LBB3_152:
	mov	r12, rax
	jmp	.LBB3_180
.LBB3_153:
.Ltmp31:
	mov	r12, rax
	jmp	.LBB3_182
.LBB3_154:
.Ltmp67:
	mov	r12, rax
	jmp	.LBB3_182
.LBB3_155:
.Ltmp10:
	mov	r12, rax
	jmp	.LBB3_182
.LBB3_156:
.Ltmp25:
	jmp	.LBB3_160
.LBB3_157:
.Ltmp28:
	jmp	.LBB3_162
.LBB3_158:
.Ltmp22:
	jmp	.LBB3_165
.LBB3_159:
.Ltmp16:
.LBB3_160:
	mov	r12, rax
	jmp	.LBB3_163
.LBB3_161:
.Ltmp19:
.LBB3_162:
	mov	r12, rax
	mov	rdi, r15
	mov	rsi, rbx
	call	_ZdlPvm
.LBB3_163:
	mov	rdi, rbp
	mov	rsi, rbx
	call	_ZdlPvm
	jmp	.LBB3_166
.LBB3_164:
.Ltmp13:
.LBB3_165:
	mov	r12, rax
.LBB3_166:
	mov	esi, 512
	mov	rdi, r14
	jmp	.LBB3_181
.LBB3_167:
.Ltmp64:
	mov	r12, rax
	mov	rdi, qword ptr [rsp + 8]        # 8-byte Reload
	jmp	.LBB3_177
.LBB3_168:
.Ltmp61:
	jmp	.LBB3_176
.LBB3_169:
.Ltmp58:
	jmp	.LBB3_176
.LBB3_170:
.Ltmp55:
	jmp	.LBB3_176
.LBB3_171:
.Ltmp52:
	jmp	.LBB3_176
.LBB3_172:
.Ltmp49:
	jmp	.LBB3_176
.LBB3_173:
.Ltmp46:
	jmp	.LBB3_176
.LBB3_174:
.Ltmp43:
	jmp	.LBB3_176
.LBB3_175:
.Ltmp40:
.LBB3_176:
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 32]       # 8-byte Reload
	mov	rdi, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rbx, qword ptr [rsp + 24]       # 8-byte Reload
.LBB3_177:
	test	rdi, rdi
	jne	.LBB3_183
# %bb.178:
	test	r14, r14
	jne	.LBB3_184
.LBB3_179:
	test	r15, r15
	je	.LBB3_182
	jmp	.LBB3_180
.LBB3_183:
	sub	rbx, rdi
	mov	rsi, rbx
	call	_ZdlPvm
	test	r14, r14
	je	.LBB3_179
.LBB3_184:
	mov	rsi, qword ptr [rsp + 56]       # 8-byte Reload
	sub	rsi, r14
	mov	rdi, r14
	call	_ZdlPvm
	test	r15, r15
	je	.LBB3_182
.LBB3_180:
	sub	rbp, r15
	mov	rdi, r15
	mov	rsi, rbp
.LBB3_181:
	call	_ZdlPvm
.LBB3_182:
	mov	rdi, qword ptr [rsp]            # 8-byte Reload
	mov	rsi, qword ptr [rsp + 48]       # 8-byte Reload
	sub	rsi, rdi
	call	_ZdlPvm
	mov	rdi, r12
	call	_Unwind_Resume@PLT
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp9-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin0          #     jumps to .Ltmp13
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp14-.Ltmp12                #   Call between .Ltmp12 and .Ltmp14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp15-.Ltmp14                #   Call between .Ltmp14 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin0          #     jumps to .Ltmp16
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp17-.Ltmp15                #   Call between .Ltmp15 and .Ltmp17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin0          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp23-.Ltmp21                #   Call between .Ltmp21 and .Ltmp23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp24-.Ltmp23                #   Call between .Ltmp23 and .Ltmp24
	.uleb128 .Ltmp25-.Lfunc_begin0          #     jumps to .Ltmp25
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp26-.Ltmp24                #   Call between .Ltmp24 and .Ltmp26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin0          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp30-.Ltmp29                #   Call between .Ltmp29 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin0          #     jumps to .Ltmp31
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp32-.Ltmp30                #   Call between .Ltmp30 and .Ltmp32
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin0          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp38-.Ltmp33                #   Call between .Ltmp33 and .Ltmp38
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp40-.Lfunc_begin0          #     jumps to .Ltmp40
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.uleb128 .Ltmp43-.Lfunc_begin0          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin0          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin0          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin0          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin0          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp58-.Lfunc_begin0          #     jumps to .Ltmp58
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Ltmp60-.Ltmp59                #   Call between .Ltmp59 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin0          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin0          # >> Call Site 27 <<
	.uleb128 .Ltmp62-.Ltmp60                #   Call between .Ltmp60 and .Ltmp62
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin0          # >> Call Site 28 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin0          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin0          # >> Call Site 29 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.uleb128 .Ltmp67-.Lfunc_begin0          #     jumps to .Ltmp67
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin0          # >> Call Site 30 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin0          # >> Call Site 31 <<
	.uleb128 .Lfunc_end3-.Ltmp36            #   Call between .Ltmp36 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.type	_ZL3HEX,@object                 # @_ZL3HEX
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
_ZL3HEX:
	.ascii	"0123456789abcdef"
	.size	_ZL3HEX, 16

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"requested cpu%d\n"
	.size	.L.str, 17

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%.2f GHz estimated from dependent adds, min of %d trials\n"
	.size	.L.str.1, 58

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"highway target: %s, %zu byte lanes per vector\n"
	.size	.L.str.2, 47

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"scalar"
	.size	.L.str.3, 7

	.type	.Lconstinit,@object             # @constinit
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.Lconstinit:
	.quad	.L.str.3
	.quad	_Z6to_hexPKhmPc
	.byte	1                               # 0x1
	.zero	7
	.size	.Lconstinit, 24

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"simd"
	.size	.L.str.4, 5

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"highway"
	.size	.L.str.5, 8

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%s: not implemented yet\n"
	.size	.L.str.6, 25

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%s: agrees with scalar for n = 0..300 on every byte value\n"
	.size	.L.str.7, 59

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"  %-9s"
	.size	.L.str.9, 7

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"input"
	.size	.L.str.10, 6

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	" %10s"
	.size	.L.str.11, 6

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	" %9s"
	.size	.L.str.12, 5

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"\n  %-9s"
	.size	.L.str.13, 8

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.zero	1
	.size	.L.str.14, 1

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"ns/byte"
	.size	.L.str.15, 8

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"speedup"
	.size	.L.str.16, 8

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"1 KiB"
	.size	.L.str.17, 6

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"16 KiB"
	.size	.L.str.18, 7

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"256 KiB"
	.size	.L.str.19, 8

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"4 MiB"
	.size	.L.str.20, 6

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"64 MiB"
	.size	.L.str.21, 7

	.type	.L__const.main.sizes,@object    # @__const.main.sizes
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L__const.main.sizes:
	.quad	1024                            # 0x400
	.quad	.L.str.17
	.quad	16384                           # 0x4000
	.quad	.L.str.18
	.quad	262144                          # 0x40000
	.quad	.L.str.19
	.quad	4194304                         # 0x400000
	.quad	.L.str.20
	.quad	67108864                        # 0x4000000
	.quad	.L.str.21
	.size	.L__const.main.sizes, 80

	.type	.L.str.22,@object               # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	" %10.4f"
	.size	.L.str.22, 8

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	" %8.1fx"
	.size	.L.str.23, 8

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"PIN_CPU"
	.size	.L.str.24, 8

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"warning: PIN_CPU outside valid affinity range; using cpu0\n"
	.size	.L.str.25, 59

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"warning: could not pin to cpu%d\n"
	.size	.L.str.26, 33

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"SSSE3"
	.size	.L.str.30, 6

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"  WRONG: %s, n = %zu, first difference at output character %zu (expected %s, got %s)\n"
	.size	.L.str.56, 86

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str.57, 49

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"'%c'"
	.size	.L.str.58, 5

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"\\x%02x"
	.size	.L.str.59, 7

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"vector::_M_realloc_append"
	.size	.L.str.60, 26

	.ident	"clang version 21.1.8 (Fedora 21.1.8-6.fc43)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z6to_hexPKhmPc
	.addrsig_sym _Z11to_hex_simdPKhmPc
	.addrsig_sym _Z14to_hex_highwayPKhmPc
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Unwind_Resume
