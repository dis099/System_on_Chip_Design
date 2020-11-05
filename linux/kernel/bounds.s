	.arch armv7-a
	.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 2	@ Tag_ABI_enum_size
	.eabi_attribute 30, 4	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.file	"bounds.c"
@ GNU C89 (Linaro GCC 7.2-2017.11-rc1) version 7.2.1 20171011 (arm-linux-gnueabihf)
@	compiled by GNU C version 6.2.0, GMP version 6.0.0, MPFR version 3.1.3, MPC version 1.0.3, isl version none
@ GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
@ options passed:  -nostdinc -I /home/diezec/xilinx_linux/arch/arm/include
@ -I ./arch/arm/include/generated/uapi -I ./arch/arm/include/generated
@ -I /home/diezec/xilinx_linux/include -I ./include
@ -I /home/diezec/xilinx_linux/arch/arm/include/uapi
@ -I /home/diezec/xilinx_linux/include/uapi -I ./include/generated/uapi
@ -I /home/diezec/xilinx_linux/. -I . -imultilib .
@ -imultiarch arm-linux-gnueabihf
@ -iprefix /cad/x_18/SDK/2018.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin/../lib/gcc/arm-linux-gnueabihf/7.2.1/
@ -isysroot /cad/x_18/SDK/2018.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin/../arm-linux-gnueabihf/libc
@ -D __KERNEL__ -D __LINUX_ARM_ARCH__=7 -U arm -D CC_HAVE_ASM_GOTO
@ -D KBUILD_BASENAME="bounds" -D KBUILD_MODNAME="bounds"
@ -isystem /cad/x_18/SDK/2018.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin/../lib/gcc/arm-linux-gnueabihf/7.2.1/include
@ -include /home/diezec/xilinx_linux/include/linux/kconfig.h
@ -MD kernel/.bounds.s.d /home/diezec/xilinx_linux/kernel/bounds.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtune=cortex-a9 -mtls-dialect=gnu
@ -auxbase-strip kernel/bounds.s -Os -Wall -Wundef -Wstrict-prototypes
@ -Wno-trigraphs -Werror=implicit-function-declaration -Wno-format-security
@ -Wno-frame-address -Wno-maybe-uninitialized -Wframe-larger-than=1024
@ -Wno-unused-but-set-variable -Wunused-const-variable=0
@ -Wdeclaration-after-statement -Wno-pointer-sign -Werror=implicit-int
@ -Werror=strict-prototypes -Werror=date-time
@ -Werror=incompatible-pointer-types -std=gnu90 -fno-strict-aliasing
@ -fno-common -fno-PIE -fno-dwarf2-cfi-asm -fno-ipa-sra -funwind-tables
@ -fno-delete-null-pointer-checks -fno-stack-protector -fomit-frame-pointer
@ -fno-var-tracking-assignments -fno-strict-overflow -fconserve-stack
@ -fverbose-asm --param allow-store-data-races=0
@ options enabled:  -faggressive-loop-optimizations -falign-jumps
@ -falign-labels -falign-loops -fauto-inc-dec -fbranch-count-reg
@ -fcaller-saves -fchkp-check-incomplete-type -fchkp-check-read
@ -fchkp-check-write -fchkp-instrument-calls -fchkp-narrow-bounds
@ -fchkp-optimize -fchkp-store-bounds -fchkp-use-static-bounds
@ -fchkp-use-static-const-bounds -fchkp-use-wrappers -fcode-hoisting
@ -fcombine-stack-adjustments -fcompare-elim -fcprop-registers
@ -fcrossjumping -fcse-follow-jumps -fdefer-pop -fdevirtualize
@ -fdevirtualize-speculatively -fearly-inlining
@ -feliminate-unused-debug-types -fexpensive-optimizations
@ -fforward-propagate -ffp-int-builtin-inexact -ffunction-cse -fgcse
@ -fgcse-lm -fgnu-runtime -fgnu-unique -fguess-branch-probability
@ -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
@ -findirect-inlining -finline -finline-atomics -finline-functions
@ -finline-functions-called-once -finline-small-functions -fipa-bit-cp
@ -fipa-cp -fipa-icf -fipa-icf-functions -fipa-icf-variables -fipa-profile
@ -fipa-pure-const -fipa-ra -fipa-reference -fipa-vrp -fira-hoist-pressure
@ -fira-share-save-slots -fira-share-spill-slots
@ -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
@ -fleading-underscore -flifetime-dse -flra-remat -flto-odr-type-merging
@ -fmath-errno -fmerge-constants -fmerge-debug-strings
@ -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
@ -fpartial-inlining -fpeephole -fpeephole2 -fplt -fprefetch-loop-arrays
@ -freg-struct-return -freorder-blocks -freorder-functions
@ -frerun-cse-after-loop -fsched-critical-path-heuristic
@ -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
@ -fsched-last-insn-heuristic -fsched-pressure -fsched-rank-heuristic
@ -fsched-spec -fsched-spec-insn-heuristic -fsched-stalled-insns-dep
@ -fschedule-insns2 -fsection-anchors -fsemantic-interposition
@ -fshow-column -fshrink-wrap -fshrink-wrap-separate -fsigned-zeros
@ -fsplit-ivs-in-unroller -fsplit-wide-types -fssa-backprop -fssa-phiopt
@ -fstdarg-opt -fstore-merging -fstrict-volatile-bitfields -fsync-libcalls
@ -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
@ -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
@ -ftree-copy-prop -ftree-cselim -ftree-dce -ftree-dominator-opts
@ -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
@ -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
@ -ftree-parallelize-loops= -ftree-phiprop -ftree-pre -ftree-pta
@ -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr -ftree-sra
@ -ftree-switch-conversion -ftree-tail-merge -ftree-ter -ftree-vrp
@ -funit-at-a-time -funwind-tables -fverbose-asm -fzero-initialized-in-bss
@ -marm -mglibc -mlittle-endian -mpic-data-is-text-relative -msched-prolog
@ -munaligned-access -mvectorize-with-neon-quad

	.text
	.align	2
	.global	foo
	.syntax unified
	.arm
	.fpu softvfp
	.type	foo, %function
foo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ /home/diezec/xilinx_linux/kernel/bounds.c:18: 	DEFINE(NR_PAGEFLAGS, __NR_PAGEFLAGS);
	.syntax divided
@ 18 "/home/diezec/xilinx_linux/kernel/bounds.c" 1
	
->NR_PAGEFLAGS #21 __NR_PAGEFLAGS	@
@ 0 "" 2
@ /home/diezec/xilinx_linux/kernel/bounds.c:19: 	DEFINE(MAX_NR_ZONES, __MAX_NR_ZONES);
@ 19 "/home/diezec/xilinx_linux/kernel/bounds.c" 1
	
->MAX_NR_ZONES #3 __MAX_NR_ZONES	@
@ 0 "" 2
@ /home/diezec/xilinx_linux/kernel/bounds.c:21: 	DEFINE(NR_CPUS_BITS, ilog2(CONFIG_NR_CPUS));
@ 21 "/home/diezec/xilinx_linux/kernel/bounds.c" 1
	
->NR_CPUS_BITS #2 ilog2(CONFIG_NR_CPUS)	@
@ 0 "" 2
@ /home/diezec/xilinx_linux/kernel/bounds.c:23: 	DEFINE(SPINLOCK_SIZE, sizeof(spinlock_t));
@ 23 "/home/diezec/xilinx_linux/kernel/bounds.c" 1
	
->SPINLOCK_SIZE #4 sizeof(spinlock_t)	@
@ 0 "" 2
@ /home/diezec/xilinx_linux/kernel/bounds.c:25: }
	.arm
	.syntax unified
	bx	lr	@
	.fnend
	.size	foo, .-foo
	.ident	"GCC: (Linaro GCC 7.2-2017.11-rc1) 7.2.1 20171011"
	.section	.note.GNU-stack,"",%progbits
