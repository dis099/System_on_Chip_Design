cmd_drivers/tty/vt/defkeymap.o := arm-linux-gnueabihf-gcc -Wp,-MD,drivers/tty/vt/.defkeymap.o.d  -nostdinc -isystem /cad/x_18/SDK/2018.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin/../lib/gcc/arm-linux-gnueabihf/7.2.1/include -I/home/diezec/xilinx_linux/arch/arm/include -I./arch/arm/include/generated/uapi -I./arch/arm/include/generated  -I/home/diezec/xilinx_linux/include -I./include -I/home/diezec/xilinx_linux/arch/arm/include/uapi -I/home/diezec/xilinx_linux/include/uapi -I./include/generated/uapi -include /home/diezec/xilinx_linux/include/linux/kconfig.h -I/home/diezec/xilinx_linux/drivers/tty/vt -Idrivers/tty/vt -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -std=gnu89 -fno-PIE -fno-dwarf2-cfi-asm -fno-ipa-sra -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -funwind-tables -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -fno-delete-null-pointer-checks -Wno-frame-address -Os -Wno-maybe-uninitialized --param=allow-store-data-races=0 -Wframe-larger-than=1024 -fno-stack-protector -Wno-unused-but-set-variable -Wno-unused-const-variable -fomit-frame-pointer -fno-var-tracking-assignments -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -Werror=incompatible-pointer-types -DCC_HAVE_ASM_GOTO    -DKBUILD_BASENAME='"defkeymap"'  -DKBUILD_MODNAME='"defkeymap"' -c -o drivers/tty/vt/.tmp_defkeymap.o drivers/tty/vt/defkeymap.c

source_drivers/tty/vt/defkeymap.o := drivers/tty/vt/defkeymap.c

deps_drivers/tty/vt/defkeymap.o := \
  /home/diezec/xilinx_linux/include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /home/diezec/xilinx_linux/include/uapi/linux/types.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/types.h \
  /home/diezec/xilinx_linux/include/asm-generic/int-ll64.h \
  /home/diezec/xilinx_linux/include/uapi/asm-generic/int-ll64.h \
  arch/arm/include/generated/asm/bitsperlong.h \
  /home/diezec/xilinx_linux/include/asm-generic/bitsperlong.h \
  /home/diezec/xilinx_linux/include/uapi/asm-generic/bitsperlong.h \
  /home/diezec/xilinx_linux/include/uapi/linux/posix_types.h \
  /home/diezec/xilinx_linux/include/linux/stddef.h \
  /home/diezec/xilinx_linux/include/uapi/linux/stddef.h \
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
  /home/diezec/xilinx_linux/arch/arm/include/uapi/asm/posix_types.h \
  /home/diezec/xilinx_linux/include/uapi/asm-generic/posix_types.h \
  /home/diezec/xilinx_linux/include/linux/keyboard.h \
  /home/diezec/xilinx_linux/include/uapi/linux/keyboard.h \
  /home/diezec/xilinx_linux/include/linux/wait.h \
    $(wildcard include/config/lockdep.h) \
  /home/diezec/xilinx_linux/include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  /home/diezec/xilinx_linux/include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
    $(wildcard include/config/page/poisoning/zero.h) \
  /home/diezec/xilinx_linux/include/uapi/linux/const.h \
  /home/diezec/xilinx_linux/include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/panic/timeout.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  /cad/x_18/SDK/2018.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/7.2.1/include/stdarg.h \
  /home/diezec/xilinx_linux/include/linux/linkage.h \
  /home/diezec/xilinx_linux/include/linux/stringify.h \
  /home/diezec/xilinx_linux/include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/trim/unused/ksyms.h) \
    $(wildcard include/config/unused/symbols.h) \
  /home/diezec/xilinx_linux/arch/arm/include/asm/linkage.h \
  /home/diezec/xilinx_linux/include/linux/bitops.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/bitops.h \
    $(wildcard include/config/smp.h) \
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
  /home/diezec/xilinx_linux/include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  /home/diezec/xilinx_linux/include/linux/printk.h \
    $(wildcard include/config/message/loglevel/default.h) \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk/nmi.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
  /home/diezec/xilinx_linux/include/linux/init.h \
    $(wildcard include/config/debug/rodata.h) \
  /home/diezec/xilinx_linux/include/linux/kern_levels.h \
  /home/diezec/xilinx_linux/include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /home/diezec/xilinx_linux/include/uapi/linux/kernel.h \
  /home/diezec/xilinx_linux/include/uapi/linux/sysinfo.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/cache.h \
    $(wildcard include/config/arm/l1/cache/shift.h) \
    $(wildcard include/config/aeabi.h) \
  /home/diezec/xilinx_linux/arch/arm/include/asm/div64.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/compiler.h \
  /home/diezec/xilinx_linux/include/asm-generic/div64.h \
  /home/diezec/xilinx_linux/include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  /home/diezec/xilinx_linux/include/linux/preempt.h \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  arch/arm/include/generated/asm/preempt.h \
  /home/diezec/xilinx_linux/include/asm-generic/preempt.h \
  /home/diezec/xilinx_linux/include/linux/thread_info.h \
    $(wildcard include/config/thread/info/in/task.h) \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/debug/stack/usage.h) \
    $(wildcard include/config/have/arch/within/stack/frames.h) \
    $(wildcard include/config/hardened/usercopy.h) \
  /home/diezec/xilinx_linux/include/linux/bug.h \
    $(wildcard include/config/generic/bug.h) \
  /home/diezec/xilinx_linux/arch/arm/include/asm/bug.h \
    $(wildcard include/config/debug/bugverbose.h) \
    $(wildcard include/config/arm/lpae.h) \
  /home/diezec/xilinx_linux/arch/arm/include/asm/opcodes.h \
    $(wildcard include/config/cpu/endian/be32.h) \
  /home/diezec/xilinx_linux/include/asm-generic/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  /home/diezec/xilinx_linux/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/crunch.h) \
    $(wildcard include/config/arm/thumbee.h) \
  /home/diezec/xilinx_linux/arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/vfpv3.h) \
    $(wildcard include/config/iwmmxt.h) \
  /home/diezec/xilinx_linux/arch/arm/include/asm/page.h \
    $(wildcard include/config/cpu/copy/v4wt.h) \
    $(wildcard include/config/cpu/copy/v4wb.h) \
    $(wildcard include/config/cpu/copy/feroceon.h) \
    $(wildcard include/config/cpu/copy/fa.h) \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/xscale.h) \
    $(wildcard include/config/cpu/copy/v6.h) \
    $(wildcard include/config/kuser/helpers.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
  /home/diezec/xilinx_linux/arch/arm/include/asm/glue.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/pgtable-2level-types.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/memory.h \
    $(wildcard include/config/need/mach/memory/h.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/have/tcm.h) \
    $(wildcard include/config/arm/patch/phys/virt.h) \
    $(wildcard include/config/phys/offset.h) \
    $(wildcard include/config/xip/kernel.h) \
    $(wildcard include/config/xip/phys/addr.h) \
  /home/diezec/xilinx_linux/include/linux/sizes.h \
  /home/diezec/xilinx_linux/include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  /home/diezec/xilinx_linux/include/linux/pfn.h \
  /home/diezec/xilinx_linux/include/asm-generic/getorder.h \
  /home/diezec/xilinx_linux/include/linux/bottom_half.h \
  /home/diezec/xilinx_linux/include/linux/spinlock_types.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/spinlock_types.h \
  /home/diezec/xilinx_linux/include/linux/lockdep.h \
    $(wildcard include/config/lock/stat.h) \
  /home/diezec/xilinx_linux/include/linux/rwlock_types.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/spinlock.h \
  /home/diezec/xilinx_linux/include/linux/prefetch.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/processor.h \
    $(wildcard include/config/have/hw/breakpoint.h) \
    $(wildcard include/config/arm/errata/754327.h) \
  /home/diezec/xilinx_linux/arch/arm/include/asm/hw_breakpoint.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
  /home/diezec/xilinx_linux/include/linux/rwlock.h \
  /home/diezec/xilinx_linux/include/linux/spinlock_api_smp.h \
    $(wildcard include/config/inline/spin/lock.h) \
    $(wildcard include/config/inline/spin/lock/bh.h) \
    $(wildcard include/config/inline/spin/lock/irq.h) \
    $(wildcard include/config/inline/spin/lock/irqsave.h) \
    $(wildcard include/config/inline/spin/trylock.h) \
    $(wildcard include/config/inline/spin/trylock/bh.h) \
    $(wildcard include/config/uninline/spin/unlock.h) \
    $(wildcard include/config/inline/spin/unlock/bh.h) \
    $(wildcard include/config/inline/spin/unlock/irq.h) \
    $(wildcard include/config/inline/spin/unlock/irqrestore.h) \
  /home/diezec/xilinx_linux/include/linux/rwlock_api_smp.h \
    $(wildcard include/config/inline/read/lock.h) \
    $(wildcard include/config/inline/write/lock.h) \
    $(wildcard include/config/inline/read/lock/bh.h) \
    $(wildcard include/config/inline/write/lock/bh.h) \
    $(wildcard include/config/inline/read/lock/irq.h) \
    $(wildcard include/config/inline/write/lock/irq.h) \
    $(wildcard include/config/inline/read/lock/irqsave.h) \
    $(wildcard include/config/inline/write/lock/irqsave.h) \
    $(wildcard include/config/inline/read/trylock.h) \
    $(wildcard include/config/inline/write/trylock.h) \
    $(wildcard include/config/inline/read/unlock.h) \
    $(wildcard include/config/inline/write/unlock.h) \
    $(wildcard include/config/inline/read/unlock/bh.h) \
    $(wildcard include/config/inline/write/unlock/bh.h) \
    $(wildcard include/config/inline/read/unlock/irq.h) \
    $(wildcard include/config/inline/write/unlock/irq.h) \
    $(wildcard include/config/inline/read/unlock/irqrestore.h) \
    $(wildcard include/config/inline/write/unlock/irqrestore.h) \
  /home/diezec/xilinx_linux/include/linux/atomic.h \
    $(wildcard include/config/generic/atomic64.h) \
  /home/diezec/xilinx_linux/arch/arm/include/asm/atomic.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/cmpxchg.h \
    $(wildcard include/config/cpu/sa110.h) \
    $(wildcard include/config/cpu/v6.h) \
  /home/diezec/xilinx_linux/include/asm-generic/cmpxchg-local.h \
  /home/diezec/xilinx_linux/include/asm-generic/atomic-long.h \
  arch/arm/include/generated/asm/current.h \
  /home/diezec/xilinx_linux/include/asm-generic/current.h \
  /home/diezec/xilinx_linux/include/uapi/linux/wait.h \
  /home/diezec/xilinx_linux/include/linux/kd.h \
  /home/diezec/xilinx_linux/include/uapi/linux/kd.h \

drivers/tty/vt/defkeymap.o: $(deps_drivers/tty/vt/defkeymap.o)

$(deps_drivers/tty/vt/defkeymap.o):
