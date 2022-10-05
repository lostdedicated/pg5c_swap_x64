	.text
	.p2align 4
	.def	printf;	.scl	3;	.type	32;	.endef
	.seh_proc	printf
printf:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	leaq	88(%rsp), %rsi
	movq	%rdx, 88(%rsp)
	movq	%rcx, %rbx
	movl	$1, %ecx
	movq	%r8, 96(%rsp)
	movq	%r9, 104(%rsp)
	movq	%rsi, 40(%rsp)
	call	*__imp___acrt_iob_func(%rip)
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii " %c\0"
	.text
	.p2align 4
	.def	scanf.constprop.0;	.scl	3;	.type	32;	.endef
	.seh_proc	scanf.constprop.0
scanf.constprop.0:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	xorl	%ecx, %ecx
	leaq	72(%rsp), %rbx
	movq	%rdx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	%rbx, 40(%rsp)
	call	*__imp___acrt_iob_func(%rip)
	movq	%rbx, %r8
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rcx
	call	__mingw_vfscanf
	addq	$48, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii " %d\0"
	.text
	.p2align 4
	.def	scanf.constprop.1;	.scl	3;	.type	32;	.endef
	.seh_proc	scanf.constprop.1
scanf.constprop.1:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	xorl	%ecx, %ecx
	leaq	72(%rsp), %rbx
	movq	%rdx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	%rbx, 40(%rsp)
	call	*__imp___acrt_iob_func(%rip)
	movq	%rbx, %r8
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	__mingw_vfscanf
	addq	$48, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	getFirstHand
	.def	getFirstHand;	.scl	2;	.type	32;	.endef
	.seh_proc	getFirstHand
getFirstHand:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	xorl	%r12d, %r12d
	movq	%rcx, %rbp
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	.p2align 4,,10
	.p2align 3
.L15:
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L35:
	call	rand
	movslq	%eax, %rdx
	movl	%eax, %ecx
	imulq	$1321528399, %rdx, %rdx
	sarl	$31, %ecx
	sarq	$34, %rdx
	subl	%ecx, %edx
	leal	(%rdx,%rdx,2), %ecx
	leal	(%rdx,%rcx,4), %edx
	subl	%edx, %eax
	movl	%eax, (%rbx)
	call	rand
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$30, %ecx
	leal	(%rax,%rcx), %edx
	andl	$3, %edx
	subl	%ecx, %edx
	movl	%edx, (%rsi)
	testl	%r12d, %r12d
	je	.L6
	testb	$3, %al
	je	.L6
	movl	(%rbx), %eax
	cmpl	0(%rbp), %eax
	je	.L44
	cmpl	$1, %r12d
	je	.L6
	cmpl	4(%rbp), %eax
	je	.L10
	cmpl	$2, %r12d
	je	.L6
	cmpl	8(%rbp), %eax
	je	.L20
.L45:
	cmpl	$4, %r12d
	jne	.L6
.L14:
	cmpl	12(%rbp), %eax
	je	.L20
	.p2align 4,,10
	.p2align 3
.L6:
	cmpl	$1, %edi
	je	.L35
	addl	$1, %r12d
	addq	$4, %rbx
	addq	$4, %rsi
	cmpl	$5, %r12d
	jne	.L15
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L44:
	cmpl	$1, %r12d
	je	.L20
	cmpl	4(%rbp), %eax
	je	.L10
	movl	$1, %edi
	cmpl	$2, %r12d
	je	.L35
	cmpl	8(%rbp), %eax
	jne	.L45
	.p2align 4,,10
	.p2align 3
.L20:
	movl	$1, %edi
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L10:
	movl	$1, %edi
	cmpl	$2, %r12d
	jle	.L35
	cmpl	8(%rbp), %eax
	je	.L35
	cmpl	$4, %r12d
	je	.L14
	jmp	.L35
	.seh_endproc
	.p2align 4
	.globl	getSuit
	.def	getSuit;	.scl	2;	.type	32;	.endef
	.seh_proc	getSuit
getSuit:
	.seh_endprologue
	cmpl	$3, %ecx
	ja	.L46
	movl	%ecx, %ecx
	leaq	CSWTCH.13(%rip), %rax
	movzbl	(%rax,%rcx), %eax
.L46:
	ret
	.seh_endproc
	.p2align 4
	.globl	getRank
	.def	getRank;	.scl	2;	.type	32;	.endef
	.seh_proc	getRank
getRank:
	.seh_endprologue
	cmpl	$12, %ecx
	ja	.L48
	movl	%ecx, %ecx
	leaq	CSWTCH.15(%rip), %rax
	movzbl	(%rax,%rcx), %eax
.L48:
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC2:
	.ascii "b\0"
.LC3:
	.ascii "1 5\0"
.LC4:
	.ascii "\12\12"
	.ascii "1 5\0"
.LC5:
	.ascii "0 q\12\0"
	.text
	.p2align 4
	.globl	getBet
	.def	getBet;	.scl	2;	.type	32;	.endef
	.seh_proc	getBet
getBet:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	leaq	.LC2(%rip), %rbp
	leaq	.LC3(%rip), %rdi
	leaq	.LC1(%rip), %rbx
	leaq	.LC4(%rip), %r13
	leaq	.LC5(%rip), %r12
	leaq	44(%rsp), %rsi
	jmp	.L53
	.p2align 4,,10
	.p2align 3
.L56:
	testl	%eax, %eax
	je	.L55
	movq	%r13, %rcx
	call	printf
	movq	%r12, %rcx
	call	printf
.L53:
	movq	%rbp, %rcx
	call	printf
	movq	%rdi, %rcx
	call	printf
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	call	scanf.constprop.1
	movl	44(%rsp), %eax
	leal	-1(%rax), %edx
	cmpl	$4, %edx
	ja	.L56
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L55:
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
.LC12:
	.ascii "str_fl\12\12\0"
.LC14:
	.ascii "4\12\12\0"
.LC15:
	.ascii "fh\12\12\0"
.LC16:
	.ascii "str\12\12\0"
	.text
	.p2align 4
	.globl	analyzeHand
	.def	analyzeHand;	.scl	2;	.type	32;	.endef
	.seh_proc	analyzeHand
analyzeHand:
	subq	$120, %rsp
	.seh_stackalloc	120
	movups	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movups	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movups	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	movups	%xmm9, 80(%rsp)
	.seh_savexmm	%xmm9, 80
	movups	%xmm10, 96(%rsp)
	.seh_savexmm	%xmm10, 96
	.seh_endprologue
	movdqu	.LC7(%rip), %xmm1
	movl	$1, %eax
	movdqu	(%rdx), %xmm0
	movl	(%rcx), %r11d
	pcmpeqd	.LC6(%rip), %xmm0
	pand	%xmm1, %xmm0
	movdqa	%xmm0, %xmm3
	psrldq	$8, %xmm3
	movdqa	%xmm3, %xmm2
	pcmpgtd	%xmm0, %xmm2
	pand	%xmm2, %xmm3
	pandn	%xmm0, %xmm2
	por	%xmm3, %xmm2
	movdqa	%xmm2, %xmm3
	psrldq	$4, %xmm3
	movdqa	%xmm3, %xmm0
	pcmpgtd	%xmm2, %xmm0
	pand	%xmm0, %xmm3
	pandn	%xmm2, %xmm0
	por	%xmm3, %xmm0
	movd	%xmm0, %r8d
	testl	%r11d, %r11d
	jne	.L92
	.p2align 4,,10
	.p2align 3
.L58:
	movq	%rax, %rdx
	addq	$1, %rax
	movl	-4(%rcx,%rax,4), %r9d
	testl	%r9d, %r9d
	je	.L58
	movl	%edx, %r10d
	cmpl	$12, %edx
	jg	.L57
	movslq	%edx, %r9
	movl	(%rcx,%r9,4), %r11d
	leaq	0(,%r9,4), %rax
	testl	%r11d, %r11d
	je	.L57
	cmpl	$12, %edx
	je	.L57
	movl	4(%rcx,%rax), %r9d
	testl	%r9d, %r9d
	je	.L57
	cmpl	$11, %edx
	je	.L57
	leaq	8(%rax), %r9
	movl	8(%rcx,%rax), %eax
	testl	%eax, %eax
	je	.L57
	cmpl	$10, %edx
	je	.L57
.L72:
	movl	4(%rcx,%r9), %eax
	testl	%eax, %eax
	je	.L57
	cmpl	$9, %r10d
	je	.L57
	movl	8(%rcx,%r9), %r11d
	testl	%r11d, %r11d
	je	.L57
	cmpl	$8, %r10d
	je	.L61
	movl	12(%rcx,%r9), %edx
	testl	%edx, %edx
	je	.L61
.L57:
	movups	32(%rsp), %xmm6
	movups	48(%rsp), %xmm7
	movups	64(%rsp), %xmm8
	movups	80(%rsp), %xmm9
	movups	96(%rsp), %xmm10
	addq	$120, %rsp
	ret
.L61:
	movdqu	(%rcx), %xmm4
	movdqu	.LC8(%rip), %xmm0
	movdqa	%xmm1, %xmm6
	movdqu	16(%rcx), %xmm3
	movdqa	%xmm4, %xmm5
	pcmpeqd	%xmm0, %xmm5
	movdqa	%xmm3, %xmm2
	pcmpeqd	%xmm0, %xmm2
	pand	%xmm1, %xmm5
	pand	%xmm2, %xmm6
	pandn	%xmm5, %xmm2
	por	%xmm6, %xmm2
	movdqa	%xmm1, %xmm6
	movdqa	%xmm2, %xmm5
	movdqu	32(%rcx), %xmm2
	movl	48(%rcx), %ecx
	pcmpeqd	%xmm2, %xmm0
	pand	%xmm0, %xmm6
	pandn	%xmm5, %xmm0
	por	%xmm6, %xmm0
	movdqa	%xmm0, %xmm6
	psrldq	$8, %xmm6
	movdqa	%xmm6, %xmm5
	pcmpgtd	%xmm0, %xmm5
	pand	%xmm5, %xmm6
	pandn	%xmm0, %xmm5
	movdqa	%xmm5, %xmm0
	por	%xmm6, %xmm0
	movdqa	%xmm0, %xmm6
	psrldq	$4, %xmm6
	movdqa	%xmm6, %xmm5
	pcmpgtd	%xmm0, %xmm5
	pand	%xmm5, %xmm6
	pandn	%xmm0, %xmm5
	por	%xmm6, %xmm5
	movd	%xmm5, %edx
	cmpl	$4, %ecx
	je	.L93
	movdqu	.LC9(%rip), %xmm5
	movdqa	%xmm4, %xmm0
	movdqu	.LC10(%rip), %xmm7
	movdqa	%xmm1, %xmm8
	movdqu	.LC11(%rip), %xmm9
	movdqa	%xmm4, %xmm6
	movdqa	%xmm3, %xmm10
	paddd	%xmm5, %xmm0
	psubd	%xmm7, %xmm8
	pcmpeqd	%xmm9, %xmm6
	pcmpeqd	%xmm9, %xmm10
	psubd	%xmm7, %xmm0
	pcmpgtd	%xmm8, %xmm0
	pcmpeqd	%xmm2, %xmm9
	pand	%xmm6, %xmm0
	movdqa	%xmm3, %xmm6
	paddd	%xmm5, %xmm6
	paddd	%xmm2, %xmm5
	pand	%xmm1, %xmm0
	psubd	%xmm7, %xmm6
	psubd	%xmm7, %xmm5
	pcmpgtd	%xmm8, %xmm6
	pcmpgtd	%xmm8, %xmm5
	pand	%xmm10, %xmm6
	pand	%xmm9, %xmm5
	psubd	%xmm6, %xmm0
	psubd	%xmm5, %xmm0
	movdqa	%xmm0, %xmm5
	psrldq	$8, %xmm5
	paddd	%xmm5, %xmm0
	movdqa	%xmm0, %xmm5
	psrldq	$4, %xmm5
	paddd	%xmm5, %xmm0
	movd	%xmm0, %eax
	cmpl	$3, %ecx
	jne	.L94
	movl	$1, %edx
	testl	%r8d, %r8d
	jne	.L63
.L90:
	movdqu	.LC13(%rip), %xmm5
	pcmpeqd	%xmm5, %xmm4
	pcmpeqd	%xmm5, %xmm3
	pcmpeqd	%xmm5, %xmm2
	movdqa	%xmm4, %xmm0
	movdqa	%xmm1, %xmm4
	pand	%xmm1, %xmm0
	pand	%xmm3, %xmm4
	pand	%xmm2, %xmm1
	pandn	%xmm0, %xmm3
	por	%xmm4, %xmm3
	pandn	%xmm3, %xmm2
	por	%xmm1, %xmm2
	movdqa	%xmm2, %xmm0
	psrldq	$8, %xmm2
	movdqa	%xmm2, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm2
	pandn	%xmm0, %xmm1
	por	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	psrldq	$4, %xmm2
	movdqa	%xmm2, %xmm0
	pcmpgtd	%xmm1, %xmm0
	pand	%xmm0, %xmm2
	pandn	%xmm1, %xmm0
	por	%xmm2, %xmm0
	movd	%xmm0, %ecx
	testl	%ecx, %ecx
	jne	.L64
	cmpl	$1, %eax
	jne	.L71
	andl	$1, %edx
	je	.L71
	leaq	.LC15(%rip), %rcx
	call	printf
	movl	$8, %eax
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L93:
	testl	%r8d, %r8d
	jne	.L63
.L64:
	leaq	.LC14(%rip), %rcx
	call	printf
	movl	$10, %eax
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L94:
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%ecx, %eax
	testl	%r8d, %r8d
	je	.L90
.L63:
	leaq	.LC12(%rip), %rcx
	call	printf
	movl	$20, %eax
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L71:
	leaq	.LC16(%rip), %rcx
	call	printf
	movl	$4, %eax
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L92:
	movl	4(%rcx), %r10d
	testl	%r10d, %r10d
	je	.L57
	movl	8(%rcx), %eax
	xorl	%r10d, %r10d
	movl	$8, %r9d
	testl	%eax, %eax
	jne	.L72
	jmp	.L57
	.seh_endproc
	.section .rdata,"dr"
.LC18:
	.ascii "k%d %c%c\0"
.LC19:
	.ascii "\12yn\0"
	.text
	.p2align 4
	.globl	getFinalHand
	.def	getFinalHand;	.scl	2;	.type	32;	.endef
	.seh_proc	getFinalHand
getFinalHand:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	xorl	%r14d, %r14d
	leaq	63(%rsp), %rax
	movq	%rcx, %r15
	movq	%rdx, %rsi
	movq	%r8, %rbx
	movq	%rax, 40(%rsp)
	movq	%r9, %rdi
	jmp	.L123
	.p2align 4,,10
	.p2align 3
.L98:
	cmpl	$78, %eax
	je	.L149
.L99:
	addq	$1, %r14
	cmpq	$5, %r14
	je	.L150
.L123:
	movl	(%rsi,%r14,4), %eax
	cmpl	$3, %eax
	ja	.L96
	leaq	CSWTCH.13(%rip), %rcx
	movzbl	(%rcx,%rax), %r13d
.L96:
	movl	(%r15,%r14,4), %eax
	cmpl	$12, %eax
	ja	.L97
	leaq	CSWTCH.15(%rip), %rcx
	movzbl	(%rcx,%rax), %r12d
.L97:
	leal	1(%r14), %edx
	movsbl	%r13b, %r9d
	movsbl	%r12b, %r8d
	leaq	.LC18(%rip), %rcx
	call	printf
	leaq	.LC19(%rip), %rcx
	call	printf
	movq	40(%rsp), %rdx
	leaq	.LC0(%rip), %rcx
	call	scanf.constprop.0
	movsbl	63(%rsp), %ecx
	call	*__imp_toupper(%rip)
	cmpl	$89, %eax
	jne	.L98
	movl	(%r15,%r14,4), %eax
	movq	176(%rsp), %rcx
	movl	%eax, (%rbx,%r14,4)
	movl	(%rsi,%r14,4), %eax
	movl	%eax, (%rdi,%r14,4)
	movslq	(%rbx,%r14,4), %rax
	addl	$1, (%rcx,%rax,4)
	movq	184(%rsp), %rcx
	movslq	(%rdi,%r14,4), %rax
	addq	$1, %r14
	addl	$1, (%rcx,%rax,4)
	cmpq	$5, %r14
	jne	.L123
.L150:
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L149:
	movl	%r14d, %ebp
	.p2align 4,,10
	.p2align 3
.L139:
	call	rand
	movl	%eax, %edx
	cltq
	imulq	$1321528399, %rax, %rax
	movl	%edx, %ecx
	sarl	$31, %ecx
	sarq	$34, %rax
	subl	%ecx, %eax
	leal	(%rax,%rax,2), %ecx
	leal	(%rax,%rcx,4), %eax
	subl	%eax, %edx
	movl	%edx, (%rbx,%r14,4)
	call	rand
	xorl	%ecx, %ecx
	cltd
	shrl	$30, %edx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	movl	%eax, (%rdi,%r14,4)
	movslq	(%rbx,%r14,4), %rdx
	cmpl	(%r15), %edx
	jne	.L100
	xorl	%ecx, %ecx
	cmpl	%eax, (%rsi)
	sete	%cl
.L100:
	cmpl	4(%r15), %edx
	jne	.L101
	cmpl	4(%rsi), %eax
	movl	$1, %r10d
	cmove	%r10d, %ecx
.L101:
	cmpl	8(%r15), %edx
	jne	.L102
	cmpl	8(%rsi), %eax
	movl	$1, %r11d
	cmove	%r11d, %ecx
.L102:
	cmpl	12(%r15), %edx
	je	.L151
.L103:
	cmpl	16(%r15), %edx
	je	.L152
.L109:
	testl	%ebp, %ebp
	je	.L122
.L106:
	cmpl	(%rbx), %edx
	je	.L115
.L116:
	cmpq	$1, %r14
	jbe	.L122
	cmpl	4(%rbx), %edx
	je	.L113
.L118:
	cmpq	$2, %r14
	jbe	.L122
.L114:
	cmpl	8(%rbx), %edx
	je	.L119
.L121:
	cmpl	$4, %ebp
	jne	.L122
	cmpl	12(%rbx), %edx
	je	.L153
.L122:
	cmpl	$1, %ecx
	je	.L139
	movq	176(%rsp), %rax
	movq	184(%rsp), %rcx
	addl	$1, (%rax,%rdx,4)
	movslq	(%rdi,%r14,4), %rax
	addl	$1, (%rcx,%rax,4)
	jmp	.L99
	.p2align 4,,10
	.p2align 3
.L151:
	cmpl	12(%rsi), %eax
	jne	.L103
	cmpl	%edx, 16(%r15)
	je	.L154
	testl	%ebp, %ebp
	je	.L139
	cmpl	(%rbx), %edx
	je	.L129
.L145:
	movl	$1, %ecx
	cmpl	$1, %ebp
	je	.L139
	cmpl	4(%rbx), %edx
	jne	.L118
	.p2align 4,,10
	.p2align 3
.L113:
	cmpl	4(%rdi), %eax
	jne	.L118
	cmpq	$2, %r14
	jbe	.L139
	movl	$1, %ecx
	cmpl	8(%rbx), %edx
	je	.L119
	cmpl	$4, %ebp
	jne	.L139
	cmpl	12(%rbx), %edx
	jne	.L122
	.p2align 4,,10
	.p2align 3
.L153:
	cmpl	12(%rdi), %eax
	jne	.L122
	jmp	.L139
	.p2align 4,,10
	.p2align 3
.L152:
	cmpl	16(%rsi), %eax
	jne	.L109
.L105:
	testl	%ebp, %ebp
	je	.L139
	cmpl	(%rbx), %edx
	je	.L155
	cmpl	$1, %ebp
	je	.L139
	movl	$1, %ecx
	cmpl	4(%rbx), %edx
	je	.L113
	cmpl	$2, %ebp
	je	.L139
	cmpl	8(%rbx), %edx
	jne	.L121
	.p2align 4,,10
	.p2align 3
.L119:
	cmpl	8(%rdi), %eax
	jne	.L121
	jmp	.L139
.L129:
	movl	$1, %ecx
	.p2align 4,,10
	.p2align 3
.L115:
	cmpl	(%rdi), %eax
	jne	.L116
.L111:
	cmpq	$1, %r14
	jbe	.L139
	movl	$1, %ecx
	cmpl	4(%rbx), %edx
	je	.L113
	cmpq	$2, %r14
	ja	.L114
	jmp	.L139
.L154:
	cmpl	16(%rsi), %eax
	je	.L105
	movl	$1, %ecx
	testl	%ebp, %ebp
	jne	.L106
	jmp	.L139
.L155:
	cmpl	(%rdi), %eax
	jne	.L145
	jmp	.L111
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC20:
	.ascii "5c\12\0"
.LC21:
	.ascii "c%d %c%c\12\0"
.LC22:
	.ascii "5cf\12\0"
.LC23:
	.ascii "w%d\12\0"
.LC24:
	.ascii "\12bal%d\12\0"
.LC25:
	.ascii "\12a\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$312, %rsp
	.seh_stackalloc	312
	.seh_endprologue
	leaq	.LC3(%rip), %rdi
	leaq	.LC1(%rip), %rbp
	call	__main
	movl	$100, 60(%rsp)
	leaq	84(%rsp), %rax
	movq	%rax, %r14
.L177:
	leaq	.LC5(%rip), %rbx
	jmp	.L160
	.p2align 4,,10
	.p2align 3
.L157:
	testl	%r15d, %r15d
	je	.L217
	leaq	.LC4(%rip), %rcx
	call	printf
	movq	%rbx, %rcx
	call	printf
.L160:
	leaq	.LC2(%rip), %rcx
	call	printf
	movq	%rdi, %rcx
	call	printf
	movq	%r14, %rdx
	movq	%rbp, %rcx
	call	scanf.constprop.1
	movl	84(%rsp), %r15d
	leal	-1(%r15), %eax
	cmpl	$4, %eax
	ja	.L157
	leaq	88(%rsp), %rcx
	leaq	112(%rsp), %r13
	xorl	%ebx, %ebx
	call	*__imp__time64(%rip)
	movq	%r13, %r12
	movl	%eax, %ecx
	call	srand
	leaq	144(%rsp), %rax
	movl	%r15d, 64(%rsp)
	movq	%rax, 48(%rsp)
	movq	%rax, %rsi
	movq	%r13, 72(%rsp)
	.p2align 4,,10
	.p2align 3
.L158:
	xorl	%r15d, %r15d
	movq	%rsi, %r13
	movl	%ebx, %esi
	movl	%r15d, %ebx
	.p2align 4,,10
	.p2align 3
.L203:
	call	rand
	movslq	%eax, %r15
	cltd
	imulq	$1321528399, %r15, %r15
	sarq	$34, %r15
	subl	%edx, %r15d
	leal	(%r15,%r15,2), %edx
	leal	(%r15,%rdx,4), %edx
	subl	%edx, %eax
	movl	%eax, (%r12)
	movl	%eax, %r15d
	call	rand
	movl	%eax, %r8d
	sarl	$31, %r8d
	shrl	$30, %r8d
	leal	(%rax,%r8), %edx
	andl	$3, %edx
	subl	%r8d, %edx
	movl	%edx, 0(%r13)
	testl	%esi, %esi
	je	.L161
	testb	$3, %al
	je	.L161
	cmpl	112(%rsp), %r15d
	je	.L218
	cmpl	$1, %esi
	je	.L161
	cmpl	116(%rsp), %r15d
	je	.L182
	cmpl	$2, %esi
	je	.L161
	cmpl	120(%rsp), %r15d
	je	.L182
	cmpl	$4, %esi
	jne	.L161
.L165:
	cmpl	124(%rsp), %r15d
	je	.L182
	.p2align 4,,10
	.p2align 3
.L161:
	cmpl	$1, %ebx
	je	.L203
	movl	%esi, %ebx
	movq	%r13, %rsi
	addq	$4, %r12
	addl	$1, %ebx
	addq	$4, %rsi
	cmpl	$5, %ebx
	jne	.L158
	movl	64(%rsp), %r15d
	movq	72(%rsp), %r13
	leaq	.LC20(%rip), %rcx
	movl	$1, %esi
	call	printf
	leaq	.LC21(%rip), %rbx
	leaq	CSWTCH.13(%rip), %r12
	jmp	.L171
	.p2align 4,,10
	.p2align 3
.L220:
	leaq	CSWTCH.15(%rip), %rcx
	movsbl	56(%rsp), %r9d
	movsbl	(%rcx,%rax), %r8d
	movb	%r8b, 59(%rsp)
.L215:
	movl	%esi, %edx
	movq	%rbx, %rcx
	addq	$1, %rsi
	call	printf
	cmpq	$6, %rsi
	je	.L219
.L171:
	movq	48(%rsp), %rax
	movl	-4(%rax,%rsi,4), %eax
	cmpl	$3, %eax
	ja	.L167
	movzbl	(%r12,%rax), %eax
	movb	%al, 56(%rsp)
.L167:
	movl	-4(%r13,%rsi,4), %eax
	cmpl	$12, %eax
	jbe	.L220
	movsbl	56(%rsp), %r9d
	movsbl	59(%rsp), %r8d
	jmp	.L215
	.p2align 4,,10
	.p2align 3
.L182:
	movl	$1, %ebx
	jmp	.L203
	.p2align 4,,10
	.p2align 3
.L218:
	cmpl	$1, %esi
	je	.L182
	movl	$1, %ebx
	cmpl	116(%rsp), %r15d
	je	.L203
	cmpl	$2, %esi
	je	.L203
	cmpl	120(%rsp), %r15d
	je	.L203
	cmpl	$4, %esi
	je	.L165
	jmp	.L203
.L219:
	leaq	96(%rsp), %rax
	movq	48(%rsp), %rdx
	pxor	%xmm0, %xmm0
	leaq	208(%rsp), %r12
	movq	%rax, 72(%rsp)
	leaq	176(%rsp), %rsi
	movq	%r13, %rcx
	movq	%r12, %r9
	movq	%rax, 40(%rsp)
	leaq	240(%rsp), %rax
	movq	%rsi, %r8
	movl	$1, %r13d
	movq	%rax, 32(%rsp)
	movq	%rax, 64(%rsp)
	movups	%xmm0, 240(%rsp)
	movups	%xmm0, 256(%rsp)
	movups	%xmm0, 272(%rsp)
	movl	$0, 288(%rsp)
	call	getFinalHand
	leaq	.LC22(%rip), %rcx
	call	printf
	jmp	.L176
	.p2align 4,,10
	.p2align 3
.L222:
	leaq	CSWTCH.15(%rip), %rcx
	movsbl	57(%rsp), %r9d
	movsbl	(%rcx,%rax), %r8d
	movb	%r8b, 58(%rsp)
.L216:
	movl	%r13d, %edx
	movq	%rbx, %rcx
	addq	$1, %r13
	call	printf
	cmpq	$6, %r13
	je	.L221
.L176:
	movl	-4(%r12,%r13,4), %eax
	cmpl	$3, %eax
	ja	.L172
	leaq	CSWTCH.13(%rip), %rcx
	movzbl	(%rcx,%rax), %eax
	movb	%al, 57(%rsp)
.L172:
	movl	-4(%rsi,%r13,4), %eax
	cmpl	$12, %eax
	jbe	.L222
	movsbl	57(%rsp), %r9d
	movsbl	58(%rsp), %r8d
	jmp	.L216
.L221:
	movq	72(%rsp), %rdx
	movq	64(%rsp), %rcx
	call	analyzeHand
	leaq	.LC23(%rip), %rcx
	imull	%r15d, %eax
	movl	%eax, %edx
	movl	%eax, %ebx
	call	printf
	movl	60(%rsp), %eax
	leaq	.LC24(%rip), %rcx
	subl	%r15d, %eax
	addl	%ebx, %eax
	movl	%eax, %edx
	movl	%eax, 60(%rsp)
	call	printf
	leaq	.LC25(%rip), %rcx
	call	printf
	leaq	.LC0(%rip), %rcx
	leaq	83(%rsp), %rdx
	call	scanf.constprop.0
	movsbl	83(%rsp), %ecx
	call	*__imp_toupper(%rip)
	cmpl	$89, %eax
	je	.L177
	xorl	%eax, %eax
	addq	$312, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L217:
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
CSWTCH.15:
	.byte	65
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	84
	.byte	74
	.byte	81
	.byte	75
CSWTCH.13:
	.byte	99
	.byte	100
	.byte	104
	.byte	115
	.align 16
.LC6:
	.long	5
	.long	5
	.long	5
	.long	5
	.align 16
.LC7:
	.long	1
	.long	1
	.long	1
	.long	1
	.align 16
.LC8:
	.long	3
	.long	3
	.long	3
	.long	3
	.align 16
.LC9:
	.long	-3
	.long	-3
	.long	-3
	.long	-3
	.align 16
.LC10:
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.align 16
.LC11:
	.long	2
	.long	2
	.long	2
	.long	2
	.align 16
.LC13:
	.long	4
	.long	4
	.long	4
	.long	4
	.def	rand;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	srand;	.scl	2;	.type	32;	.endef
