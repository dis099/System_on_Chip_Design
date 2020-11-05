cmd_lib/hweight.o := arm-linux-gnueabihf-gcc -Wp,-MD,lib/.hweight.o.d  -nostdinc -isystem /cad/x_18/SDK/2018.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin/../lib/gcc/arm-linux-gnueabihf/7.2.1/include -I/home/diezec/xilinx_linux/arch/arm/include -I./arch/arm/include/generated/uapi -I./arch/arm/include/generated  -I/home/diezec/xilinx_linux/include -I./include -I/home/diezec/xilinx_linux/arch/arm/include/uapi -I/home/diezec/xilinx_linux/include/uapi -I./include/generated/uapi -include /home/diezec/xilinx_linux/include/linux/kconfig.h -I/home/diezec/xilinx_linux/lib -Ilib -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -std=gnu89 -fno-PIE -fno-dwarf2-cfi-asm -fno-ipa-sra -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -funwind-tables -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -fno-delete-null-pointer-checks -Wno-frame-address -Os -Wno-maybe-uninitialized --param=allow-store-data-races=0 -Wframe-larger-than=1024 -fno-stack-protector -Wno-unused-but-set-variable -Wno-unused-const-variable -fomit-frame-pointer -fno-var-tracking-assignments -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -Werror=incompatible-pointer-types -DCC_HAVE_ASM_GOTO    -DKBUILD_BASENAME='"hweight"'  -DKBUILD_MODNAME='"hweight"' -c -o lib/.tmp_hweight.o /home/diezec/xilinx_linux/lib/hweight.c

source_lib/hweight.o := /home/diezec/xilinx_linux/lib/hweight.c

deps_lib/hweight.o := \
    $(wildcard include/config/arch/has/fast/multiplier.h) \
  /home/diezec/xilinx_linux/include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/trim/unused/ksyms.h) \
    $(wildcard include/config/unused/symbols.h) \
  /home/diezec/xilinx_linux/include/linux/bitops.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/types.h \
  /home/diezec/xilinx_linux/include/asm-generic/int-ll64.h \
  /home/diezec/xilinx_linux/include/uapi/asm-generic/int-ll64.h \
  arch/arm/include/generated/asm/bitsperlong.h \
  /home/diezec/xilinx_linux/include/asm-generic/bitsperlong.h \
    $(wildcard include/config/64bit.h) \
  /home/diezec/xilinx_linux/include/uapi/asm-generic/bitsperlong.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/bitops.h \
    $(wildcard include/config/smp.h) \
  /home/diezec/xilinx_linux/include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/kasan.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  /home/diezec/xilinx_linux/include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
    $(wildcard include/config/gcov/kernel.h) \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  /home/diezec/xilinx_linux/include/uapi/linux/types.h \
  /home/diezec/xilinx_linux/include/uapi/linux/posix_types.h \
  /home/diezec/xilinx_linux/include/linux/stddef.h \
  /home/diezec/xilinx_linux/include/uapi/linux/stddef.h \
  /home/diezec/xilinx_linux/arch/arm/include/uapi/asm/posix_types.h \
  /home/diezec/xilinx_linux/include/uapi/asm-generic/posix_types.h \
  /home/diezec/xilinx_linux/include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  /home/diezec/xilinx_linux/include/linux/typecheck.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/irqflags.h \
    $(wildcard include/config/cpu/v7m.h) \
  /home/diezec/xilinx_linux/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/arm/thumb.h) \
    $(wildcard include/config/thumb2/kernel.h) \
  /home/diezec/xilinx_linux/arch/arm/include/uapi/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
  /home/diezec/xilinx_linux/arch/arm/include/asm/hwcap.h \
  /home/diezec/xilinx_linux/arch/arm/include/uapi/asm/hwcap.h \
  /home/diezec/xilinx_linux/include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
  /home/diezec/xilinx_linux/include/asm-generic/irqflags.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/barrier.h \
    $(wildcard include/config/cpu/32v6k.h) \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/fa526.h) \
    $(wildcard include/config/arm/heavy/mb.h) \
    $(wildcard include/config/arm/dma/mem/bufferable.h) \
  /home/diezec/xilinx_linux/include/asm-generic/barrier.h \
  /home/diezec/xilinx_linux/include/asm-generic/bitops/non-atomic.h \
  /home/diezec/xilinx_linux/include/asm-generic/bitops/fls64.h \
  /home/diezec/xilinx_linux/include/asm-generic/bitops/sched.h \
  /home/diezec/xilinx_linux/include/asm-generic/bitops/hweight.h \
  /home/diezec/xilinx_linux/include/asm-generic/bitops/arch_hweight.h \
  /home/diezec/xilinx_linux/include/asm-generic/bitops/const_hweight.h \
  /home/diezec/xilinx_linux/include/asm-generic/bitops/lock.h \
  /home/diezec/xilinx_linux/include/asm-generic/bitops/le.h \
  /home/diezec/xilinx_linux/arch/arm/include/uapi/asm/byteorder.h \
  /home/diezec/xilinx_linux/include/linux/byteorder/little_endian.h \
  /home/diezec/xilinx_linux/include/uapi/linux/byteorder/little_endian.h \
  /home/diezec/xilinx_linux/include/linux/swab.h \
  /home/diezec/xilinx_linux/include/uapi/linux/swab.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/swab.h \
  /home/diezec/xilinx_linux/arch/arm/include/uapi/asm/swab.h \
  /home/diezec/xilinx_linux/include/linux/byteorder/generic.h \
  /home/diezec/xilinx_linux/include/asm-generic/bitops/ext2-atomic-setbit.h \

lib/hweight.o: $(deps_lib/hweight.o)

$(deps_lib/hweight.o):
