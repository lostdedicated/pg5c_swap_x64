	.text
	.def	printf;	.scl	3;	.type	32;	.endef
	.seh_proc	printf
printf:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%r8, 96(%rsp)
	leaq	88(%rsp), %r8
	movq	%rcx, %rbx
	movl	$1, %ecx
	movq	%rdx, 88(%rsp)
	movq	%r9, 104(%rsp)
	movq	%r8, 56(%rsp)
	movq	%r8, 40(%rsp)
	call	*__imp___acrt_iob_func(%rip)
	movq	40(%rsp), %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	addq	$64, %rsp
	popq	%rbx
	ret
	.seh_endproc
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
	movl	$13, %edi
	movl	$1, %ebp
	movq	%rcx, %rsi
	movq	%rdx, %r12
.L8:
	xorl	%r13d, %r13d
.L7:
	call	rand
	cltd
	idivl	%edi
	movl	%edx, (%rsi,%rbx,4)
	call	rand
	movl	$4, %r8d
	cltd
	movl	%eax, %ecx
	idivl	%r8d
	andl	$3, %ecx
	xorl	%eax, %eax
	movl	%edx, (%r12,%rbx,4)
.L4:
	cmpl	%ebx, %eax
	jge	.L15
	movl	(%rsi,%rax,4), %edx
	cmpl	%edx, (%rsi,%rbx,4)
	jne	.L5
	testl	%ecx, %ecx
	cmovne	%ebp, %r13d
.L5:
	incq	%rax
	jmp	.L4
.L15:
	cmpl	$1, %r13d
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
	ja	.L16
	movl	%ecx, %ecx
	leaq	CSWTCH.13(%rip), %rax
	movb	(%rax,%rcx), %al
.L16:
	ret
	.seh_endproc
	.globl	getRank
	.def	getRank;	.scl	2;	.type	32;	.endef
	.seh_proc	getRank
getRank:
	.seh_endprologue
	cmpl	$12, %ecx
	ja	.L18
	movl	%ecx, %ecx
	leaq	CSWTCH.15(%rip), %rax
	movb	(%rax,%rcx), %al
.L18:
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "b\0"
.LC1:
	.ascii "1 5\0"
.LC2:
	.ascii " %d\0"
.LC3:
	.ascii "\12\12"
	.ascii "1 5\0"
.LC4:
	.ascii "0 q\12\0"
	.text
	.globl	getBet
	.def	getBet;	.scl	2;	.type	32;	.endef
	.seh_proc	getBet
getBet:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leaq	.LC0(%rip), %rbx
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
.L23:
	movq	%rbx, %rcx
	call	printf
	movq	%rsi, %rcx
	call	printf
	leaq	44(%rsp), %rdx
	movq	%rdi, %rcx
	call	scanf
	movl	44(%rsp), %eax
	leal	-1(%rax), %edx
	cmpl	$4, %edx
	jbe	.L24
	testl	%eax, %eax
	jne	.L22
	movl	$1, %ecx
	call	exit
.L22:
	leaq	.LC3(%rip), %rcx
	call	printf
	leaq	.LC4(%rip), %rcx
	call	printf
	jmp	.L23
.L24:
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC5:
	.ascii "str_fl\12\12\0"
.LC6:
	.ascii "4\12\12\0"
.LC7:
	.ascii "fh\12\12\0"
.LC8:
	.ascii "str\12\12\0"
	.text
	.globl	analyzeHand
	.def	analyzeHand;	.scl	2;	.type	32;	.endef
	.seh_proc	analyzeHand
analyzeHand:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	movl	$1, %r9d
.L27:
	cmpl	$5, (%rdx,%rax,4)
	cmove	%r9d, %r8d
	incq	%rax
	cmpq	$4, %rax
	jne	.L27
	xorl	%eax, %eax
.L28:
	movq	%rax, %rdx
	leaq	1(%rax), %rax
	cmpl	$0, (%rcx,%rdx,4)
	je	.L28
	movslq	%edx, %rax
.L29:
	cmpl	$12, %eax
	jle	.L30
.L34:
	subl	%edx, %eax
	cmpl	$5, %eax
	jne	.L25
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	jmp	.L31
.L30:
	cmpl	$0, (%rcx,%rax,4)
	je	.L34
	incq	%rax
	jmp	.L29
.L55:
	cmpl	$3, %r9d
	je	.L43
	cmpl	$2, %r9d
	jne	.L35
	incl	%edx
.L35:
	incq	%rax
	cmpq	$13, %rax
	je	.L54
.L31:
	movl	(%rcx,%rax,4), %r9d
	cmpl	$4, %r9d
	jne	.L55
	movl	$1, %r11d
	jmp	.L35
.L43:
	movl	$1, %r10d
	jmp	.L35
.L54:
	testl	%r8d, %r8d
	je	.L36
	leaq	.LC5(%rip), %rcx
	call	printf
	movl	$20, %eax
	jmp	.L25
.L36:
	testl	%r11d, %r11d
	je	.L38
	leaq	.LC6(%rip), %rcx
	call	printf
	movl	$10, %eax
	jmp	.L25
.L38:
	decl	%edx
	jne	.L39
	testl	%r10d, %r10d
	je	.L39
	leaq	.LC7(%rip), %rcx
	call	printf
	movl	$8, %eax
	jmp	.L25
.L39:
	leaq	.LC8(%rip), %rcx
	call	printf
	movl	$4, %eax
.L25:
	addq	$40, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC9:
	.ascii "k%d %c%c\0"
.LC10:
	.ascii "\12yn\0"
.LC11:
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
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	xorl	%ebx, %ebx
	movq	160(%rsp), %rbp
	movq	168(%rsp), %r12
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%r8, %rsi
	movq	%r9, %rdi
.L65:
	movl	(%r14,%rbx,4), %ecx
	leal	1(%rbx), %edx
	call	getSuit
	movl	(%r15,%rbx,4), %ecx
	movsbl	%al, %r9d
	call	getRank
	leaq	.LC9(%rip), %rcx
	movsbl	%al, %r8d
	call	printf
	leaq	.LC10(%rip), %rcx
	call	printf
	leaq	.LC11(%rip), %rcx
	leaq	47(%rsp), %rdx
	call	scanf
	movsbl	47(%rsp), %ecx
	call	*__imp_toupper(%rip)
	cmpl	$89, %eax
	jne	.L57
	movl	(%r15,%rbx,4), %eax
	movl	%eax, (%rsi,%rbx,4)
	movl	(%r14,%rbx,4), %eax
	movl	%eax, (%rdi,%rbx,4)
	movslq	(%rsi,%rbx,4), %rax
	incl	0(%rbp,%rax,4)
	movslq	(%rdi,%rbx,4), %rax
	jmp	.L70
.L57:
	cmpl	$78, %eax
	jne	.L58
	leaq	(%rdi,%rbx,4), %r13
.L64:
	call	rand
	movl	$13, %ecx
	cltd
	idivl	%ecx
	movl	%edx, (%rsi,%rbx,4)
	call	rand
	movl	$4, %ecx
	xorl	%r11d, %r11d
	movl	$1, %r8d
	cltd
	idivl	%ecx
	xorl	%ecx, %ecx
	movl	%edx, (%rdi,%rbx,4)
	movslq	(%rsi,%rbx,4), %rax
.L60:
	cmpl	(%r15,%r11), %eax
	jne	.L59
	cmpl	(%r14,%r11), %edx
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
	movslq	0(%r13), %rax
.L70:
	incl	(%r12,%rax,4)
.L58:
	incq	%rbx
	cmpq	$5, %rbx
	jne	.L65
	addq	$56, %rsp
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
	.section .rdata,"dr"
.LC12:
	.ascii "5c\12\0"
.LC13:
	.ascii "c%d %c%c\12\0"
.LC14:
	.ascii "5cf\12\0"
.LC15:
	.ascii "w%d\12\0"
.LC16:
	.ascii "\12bal%d\12\0"
.LC17:
	.ascii "\12a\0"
	.section	.text.startup,"x"
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
	subq	$248, %rsp
	.seh_stackalloc	248
	.seh_endprologue
	call	__main
	movl	$100, 60(%rsp)
	movq	__imp__time64(%rip), %r14
.L75:
	call	getBet
	leaq	80(%rsp), %rcx
	leaq	108(%rsp), %rbp
	movl	$1, %esi
	movl	%eax, %ebx
	leaq	128(%rsp), %r12
	call	*%r14
	movl	%eax, %ecx
	call	srand
	movq	%r12, %rdx
	movq	%rbp, %rcx
	call	getFirstHand
	leaq	.LC12(%rip), %rcx
	call	printf
.L73:
	movl	-4(%r12,%rsi,4), %ecx
	movl	%esi, %edx
	call	getSuit
	movl	-4(%rbp,%rsi,4), %ecx
	incq	%rsi
	movsbl	%al, %r9d
	call	getRank
	leaq	.LC13(%rip), %rcx
	movsbl	%al, %r8d
	call	printf
	cmpq	$6, %rsi
	jne	.L73
	leaq	188(%rsp), %rsi
	xorl	%eax, %eax
	movl	$13, %ecx
	movq	%r12, %rdx
	movq	%rsi, %rdi
	leaq	168(%rsp), %r15
	leaq	148(%rsp), %r13
	rep stosl
	leaq	92(%rsp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rbp, %rcx
	movq	%rdi, 40(%rsp)
	movq	%r15, %r9
	movq	%r13, %r8
	movl	$1, %ebp
	call	getFinalHand
	leaq	.LC14(%rip), %rcx
	call	printf
.L74:
	movl	-4(%r15,%rbp,4), %ecx
	movl	%ebp, %edx
	call	getSuit
	movl	-4(%r13,%rbp,4), %ecx
	incq	%rbp
	movsbl	%al, %r9d
	call	getRank
	leaq	.LC13(%rip), %rcx
	movsbl	%al, %r8d
	call	printf
	cmpq	$6, %rbp
	jne	.L74
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	call	analyzeHand
	leaq	.LC15(%rip), %rcx
	imull	%ebx, %eax
	movl	%eax, %edx
	movl	%eax, %esi
	call	printf
	movl	60(%rsp), %eax
	leaq	.LC16(%rip), %rcx
	subl	%ebx, %eax
	addl	%esi, %eax
	movl	%eax, %edx
	movl	%eax, 60(%rsp)
	call	printf
	leaq	.LC17(%rip), %rcx
	call	printf
	leaq	.LC11(%rip), %rcx
	leaq	79(%rsp), %rdx
	call	scanf
	movsbl	79(%rsp), %ecx
	call	*__imp_toupper(%rip)
	cmpl	$89, %eax
	je	.L75
	xorl	%eax, %eax
	addq	$248, %rsp
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
	.def	rand;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	srand;	.scl	2;	.type	32;	.endef
