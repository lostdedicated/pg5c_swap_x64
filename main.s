	.text
	.def	scanf;	.scl	3;	.type	32;	.endef
	.seh_proc	scanf
scanf:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%r8, 96(%rsp)
	leaq	88(%rsp), %r8
	movq	%rcx, %rbx
	xorl	%ecx, %ecx
	movq	%rdx, 88(%rsp)
	movq	%r9, 104(%rsp)
	movq	%r8, 56(%rsp)
	movq	%r8, 40(%rsp)
	call	*__imp___acrt_iob_func(%rip)
	movq	40(%rsp), %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	__mingw_vfscanf
	addq	$64, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "%d: %c%c?\0"
	.text
	.def	printf.constprop.0;	.scl	3;	.type	32;	.endef
	.seh_proc	printf.constprop.0
printf.constprop.0:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movl	$1, %ecx
	movq	%r8, 96(%rsp)
	leaq	88(%rsp), %r8
	movq	%rdx, 88(%rsp)
	movq	%r9, 104(%rsp)
	movq	%r8, 56(%rsp)
	movq	%r8, 40(%rsp)
	call	*__imp___acrt_iob_func(%rip)
	movq	40(%rsp), %r8
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	addq	$72, %rsp
	ret
	.seh_endproc
	.globl	getFirstHand
	.def	getFirstHand;	.scl	2;	.type	32;	.endef
	.seh_proc	getFirstHand
getFirstHand:
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
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	xorl	%ebx, %ebx
	movl	$13, %r12d
	movl	$1, %r13d
	movq	%rcx, %rsi
	movq	%rdx, %rdi
.L8:
	xorl	%ebp, %ebp
.L7:
	call	rand
	cltd
	idivl	%r12d
	movl	%edx, (%rsi,%rbx,4)
	call	rand
	movl	$4, %ecx
	cltd
	idivl	%ecx
	xorl	%eax, %eax
	movl	%edx, (%rdi,%rbx,4)
.L4:
	cmpl	%ebx, %eax
	jge	.L13
	movl	(%rsi,%rax,4), %ecx
	cmpl	%ecx, (%rsi,%rbx,4)
	jne	.L5
	cmpl	(%rdi,%rax,4), %edx
	cmove	%r13d, %ebp
.L5:
	incq	%rax
	jmp	.L4
.L13:
	cmpl	$1, %ebp
	je	.L7
	incq	%rbx
	cmpq	$5, %rbx
	jne	.L8
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.seh_endproc
	.globl	getSuit
	.def	getSuit;	.scl	2;	.type	32;	.endef
	.seh_proc	getSuit
getSuit:
	.seh_endprologue
	cmpl	$3, %ecx
	ja	.L14
	movl	%ecx, %ecx
	leaq	CSWTCH.15(%rip), %rax
	movb	(%rax,%rcx), %al
.L14:
	ret
	.seh_endproc
	.globl	getRank
	.def	getRank;	.scl	2;	.type	32;	.endef
	.seh_proc	getRank
getRank:
	.seh_endprologue
	cmpl	$12, %ecx
	ja	.L16
	movl	%ecx, %ecx
	leaq	CSWTCH.17(%rip), %rax
	movb	(%rax,%rcx), %al
.L16:
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii " %d\0"
	.text
	.globl	getBet
	.def	getBet;	.scl	2;	.type	32;	.endef
	.seh_proc	getBet
getBet:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	leaq	.LC1(%rip), %rsi
	leaq	44(%rsp), %rbx
.L20:
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	scanf
	movl	44(%rsp), %eax
	leal	-1(%rax), %edx
	cmpl	$4, %edx
	jbe	.L22
	testl	%eax, %eax
	jne	.L20
	movl	$1, %ecx
	call	exit
.L22:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.globl	analyzeHand
	.def	analyzeHand;	.scl	2;	.type	32;	.endef
	.seh_proc	analyzeHand
analyzeHand:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	movl	$1, %r9d
.L25:
	cmpl	$5, (%rdx,%rax,4)
	cmove	%r9d, %r8d
	incq	%rax
	cmpq	$4, %rax
	jne	.L25
	xorl	%eax, %eax
.L26:
	movq	%rax, %r9
	leaq	1(%rax), %rax
	cmpl	$0, (%rcx,%r9,4)
	je	.L26
	movslq	%r9d, %rax
.L27:
	cmpl	$12, %eax
	jle	.L28
.L31:
	movl	%eax, %edx
	xorl	%esi, %esi
	subl	%r9d, %edx
	cmpl	$5, %edx
	sete	%sil
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	xorl	%r10d, %r10d
	xorl	%ebx, %ebx
	jmp	.L29
.L28:
	cmpl	$0, (%rcx,%rax,4)
	je	.L31
	incq	%rax
	jmp	.L27
.L55:
	cmpl	$3, %r11d
	je	.L37
	cmpl	$2, %r11d
	jne	.L32
	incl	%eax
.L32:
	incq	%r9
	cmpq	$13, %r9
	je	.L54
.L29:
	movl	(%rcx,%r9,4), %r11d
	cmpl	$4, %r11d
	jne	.L55
	movl	$1, %ebx
	jmp	.L32
.L37:
	movl	$1, %r10d
	jmp	.L32
.L54:
	testl	%esi, %r8d
	jne	.L38
	testl	%ebx, %ebx
	jne	.L39
	cmpl	$1, %eax
	sete	%cl
	testl	%r10d, %r10d
	je	.L44
	testb	%cl, %cl
	jne	.L40
.L44:
	testl	%r8d, %r8d
	jne	.L41
	cmpl	$5, %edx
	je	.L42
	testl	%r10d, %r10d
	jne	.L43
	cmpl	$2, %eax
	je	.L23
	movzbl	%cl, %eax
	jmp	.L23
.L38:
	movl	$20, %eax
	jmp	.L23
.L39:
	movl	$10, %eax
	jmp	.L23
.L40:
	movl	$8, %eax
	jmp	.L23
.L41:
	movl	$5, %eax
	jmp	.L23
.L42:
	movl	$4, %eax
	jmp	.L23
.L43:
	movl	$3, %eax
.L23:
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC2:
	.ascii " %c\0"
	.text
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
	movq	__imp_toupper(%rip), %r14
	xorl	%ebx, %ebx
	movq	176(%rsp), %rbp
	movq	184(%rsp), %r12
	movq	%rcx, %r15
	movq	%rdx, %r13
	movq	%r8, %rsi
	movq	%r9, %rdi
.L65:
	movl	0(%r13,%rbx,4), %ecx
	leal	1(%rbx), %edx
	call	getSuit
	movl	(%r15,%rbx,4), %ecx
	movsbl	%al, %r9d
	call	getRank
	leaq	.LC0(%rip), %rcx
	movsbl	%al, %r8d
	call	printf.constprop.0
	leaq	.LC2(%rip), %rcx
	leaq	63(%rsp), %rdx
	call	scanf
	movsbl	63(%rsp), %ecx
	call	*%r14
	cmpl	$89, %eax
	jne	.L57
	movl	(%r15,%rbx,4), %eax
	movl	%eax, (%rsi,%rbx,4)
	movl	0(%r13,%rbx,4), %eax
	movl	%eax, (%rdi,%rbx,4)
	movslq	(%rsi,%rbx,4), %rax
	incl	0(%rbp,%rax,4)
	movslq	(%rdi,%rbx,4), %rax
	jmp	.L70
.L57:
	cmpl	$78, %eax
	jne	.L58
	leaq	(%rdi,%rbx,4), %r9
.L64:
	movq	%r9, 40(%rsp)
	call	rand
	movl	$13, %ecx
	cltd
	idivl	%ecx
	movl	%edx, (%rsi,%rbx,4)
	call	rand
	movl	$4, %ecx
	movq	40(%rsp), %r9
	xorl	%r11d, %r11d
	cltd
	movl	$1, %r8d
	idivl	%ecx
	xorl	%ecx, %ecx
	movl	%edx, (%rdi,%rbx,4)
	movslq	(%rsi,%rbx,4), %rax
.L60:
	cmpl	(%r15,%r11), %eax
	jne	.L59
	cmpl	0(%r13,%r11), %edx
	cmove	%r8d, %ecx
.L59:
	addq	$4, %r11
	cmpq	$20, %r11
	jne	.L60
	xorl	%r11d, %r11d
.L61:
	cmpl	%ebx, %r11d
	jge	.L71
	cmpl	(%rsi,%r11,4), %eax
	jne	.L62
	cmpl	(%rdi,%r11,4), %edx
	cmove	%r8d, %ecx
.L62:
	incq	%r11
	jmp	.L61
.L71:
	decl	%ecx
	je	.L64
	incl	0(%rbp,%rax,4)
	movslq	(%r9), %rax
.L70:
	incl	(%r12,%rax,4)
.L58:
	incq	%rbx
	cmpq	$5, %rbx
	jne	.L65
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
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section	.text.startup,"x"
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
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
	subq	$232, %rsp
	.seh_stackalloc	232
	.seh_endprologue
	leaq	.LC2(%rip), %rsi
	call	__main
	movq	__imp__time64(%rip), %rbp
	movq	__imp_toupper(%rip), %rbx
.L73:
	call	getBet
	leaq	64(%rsp), %rcx
	leaq	112(%rsp), %r13
	call	*%rbp
	leaq	92(%rsp), %r12
	movl	%eax, %ecx
	call	srand
	movq	%r13, %rdx
	movq	%r12, %rcx
	call	getFirstHand
	xorl	%eax, %eax
	leaq	172(%rsp), %rdx
	movl	$13, %ecx
	movq	%rax, 76(%rsp)
	movq	%rdx, %rdi
	leaq	152(%rsp), %r9
	leaq	132(%rsp), %r8
	movq	%rax, 84(%rsp)
	xorl	%eax, %eax
	rep stosl
	leaq	76(%rsp), %rax
	movq	%rdx, 32(%rsp)
	movq	%r12, %rcx
	movq	%rax, 40(%rsp)
	movq	%r13, %rdx
	call	getFinalHand
	movq	%rsi, %rcx
	leaq	63(%rsp), %rdx
	call	scanf
	movsbl	63(%rsp), %ecx
	call	*%rbx
	cmpl	$89, %eax
	je	.L73
	addq	$232, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
CSWTCH.17:
	.byte	97
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	48
	.byte	106
	.byte	113
	.byte	107
CSWTCH.15:
	.byte	115
	.byte	100
	.byte	104
	.byte	99
	.def	rand;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	srand;	.scl	2;	.type	32;	.endef
