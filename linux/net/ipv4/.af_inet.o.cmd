cmd_net/ipv4/af_inet.o := arm-linux-gnueabihf-gcc -Wp,-MD,net/ipv4/.af_inet.o.d  -nostdinc -isystem /cad/x_18/SDK/2018.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin/../lib/gcc/arm-linux-gnueabihf/7.2.1/include -I/home/diezec/xilinx_linux/arch/arm/include -I./arch/arm/include/generated/uapi -I./arch/arm/include/generated  -I/home/diezec/xilinx_linux/include -I./include -I/home/diezec/xilinx_linux/arch/arm/include/uapi -I/home/diezec/xilinx_linux/include/uapi -I./include/generated/uapi -include /home/diezec/xilinx_linux/include/linux/kconfig.h -I/home/diezec/xilinx_linux/net/ipv4 -Inet/ipv4 -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -std=gnu89 -fno-PIE -fno-dwarf2-cfi-asm -fno-ipa-sra -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -funwind-tables -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -fno-delete-null-pointer-checks -Wno-frame-address -Os -Wno-maybe-uninitialized --param=allow-store-data-races=0 -Wframe-larger-than=1024 -fno-stack-protector -Wno-unused-but-set-variable -Wno-unused-const-variable -fomit-frame-pointer -fno-var-tracking-assignments -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -Werror=incompatible-pointer-types -DCC_HAVE_ASM_GOTO    -DKBUILD_BASENAME='"af_inet"'  -DKBUILD_MODNAME='"af_inet"' -c -o net/ipv4/.tmp_af_inet.o /home/diezec/xilinx_linux/net/ipv4/af_inet.c

source_net/ipv4/af_inet.o := /home/diezec/xilinx_linux/net/ipv4/af_inet.c

deps_net/ipv4/af_inet.o := \
    $(wildcard include/config/ip/mroute.h) \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/ipv6.h) \
    $(wildcard include/config/ip/multicast.h) \
    $(wildcard include/config/sysctl.h) \
    $(wildcard include/config/proc/fs.h) \
  /home/diezec/xilinx_linux/include/linux/err.h \
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
  /home/diezec/xilinx_linux/arch/arm/include/asm/types.h \
  /home/diezec/xilinx_linux/include/asm-generic/int-ll64.h \
  /home/diezec/xilinx_linux/include/uapi/asm-generic/int-ll64.h \
  arch/arm/include/generated/asm/bitsperlong.h \
  /home/diezec/xilinx_linux/include/asm-generic/bitsperlong.h \
    $(wildcard include/config/64bit.h) \
  /home/diezec/xilinx_linux/include/uapi/asm-generic/bitsperlong.h \
  /home/diezec/xilinx_linux/include/uapi/linux/posix_types.h \
  /home/diezec/xilinx_linux/include/linux/stddef.h \
  /home/diezec/xilinx_linux/include/uapi/linux/stddef.h \
  /home/diezec/xilinx_linux/arch/arm/include/uapi/asm/posix_types.h \
  /home/diezec/xilinx_linux/include/uapi/asm-generic/posix_types.h \
  /home/diezec/xilinx_linux/include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
  arch/arm/include/generated/asm/errno.h \
  /home/diezec/xilinx_linux/include/uapi/asm-generic/errno.h \
  /home/diezec/xilinx_linux/include/uapi/asm-generic/errno-base.h \
  /home/diezec/xilinx_linux/include/linux/errno.h \
  /home/diezec/xilinx_linux/include/uapi/linux/errno.h \
  /home/diezec/xilinx_linux/include/linux/socket.h \
  arch/arm/include/generated/asm/socket.h \
  /home/diezec/xilinx_linux/include/uapi/asm-generic/socket.h \
  arch/arm/include/generated/asm/sockios.h \
  /home/diezec/xilinx_linux/include/uapi/asm-generic/sockios.h \
  /home/diezec/xilinx_linux/include/uapi/linux/sockios.h \
  /home/diezec/xilinx_linux/include/linux/uio.h \
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
  /home/diezec/xilinx_linux/include/uapi/linux/uio.h \
  /home/diezec/xilinx_linux/include/uapi/linux/socket.h \
  /home/diezec/xilinx_linux/include/linux/in.h \
  /home/diezec/xilinx_linux/include/uapi/linux/in.h \
  /home/diezec/xilinx_linux/include/uapi/linux/libc-compat.h \
    $(wildcard include/config/data.h) \
  /home/diezec/xilinx_linux/include/linux/kmod.h \
  /home/diezec/xilinx_linux/include/linux/gfp.h \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/zone/device.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/pm/sleep.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/cma.h) \
  /home/diezec/xilinx_linux/include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/virtual.h) \
    $(wildcard include/config/debug/vm/pgflags.h) \
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
  /home/diezec/xilinx_linux/include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/zsmalloc.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/page/extension.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/deferred/struct/page/init.h) \
    $(wildcard include/config/transparent/hugepage.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  /home/diezec/xilinx_linux/include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  /home/diezec/xilinx_linux/include/linux/preempt.h \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  /home/diezec/xilinx_linux/include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  /home/diezec/xilinx_linux/include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
    $(wildcard include/config/page/poisoning/zero.h) \
  /home/diezec/xilinx_linux/include/uapi/linux/const.h \
  arch/arm/include/generated/asm/preempt.h \
  /home/diezec/xilinx_linux/include/asm-generic/preempt.h \
  /home/diezec/xilinx_linux/include/linux/thread_info.h \
    $(wildcard include/config/thread/info/in/task.h) \
    $(wildcard include/config/debug/stack/usage.h) \
    $(wildcard include/config/have/arch/within/stack/frames.h) \
    $(wildcard include/config/hardened/usercopy.h) \
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
  /home/diezec/xilinx_linux/arch/arm/include/asm/glue.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/pgtable-2level-types.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/memory.h \
    $(wildcard include/config/need/mach/memory/h.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/have/tcm.h) \
    $(wildcard include/config/arm/patch/phys/virt.h) \
    $(wildcard include/config/phys/offset.h) \
    $(wildcard include/config/xip/kernel.h) \
    $(wildcard include/config/xip/phys/addr.h) \
  /home/diezec/xilinx_linux/include/linux/sizes.h \
  /home/diezec/xilinx_linux/include/asm-generic/memory_model.h \
    $(wildcard include/config/sparsemem/vmemmap.h) \
  /home/diezec/xilinx_linux/include/linux/pfn.h \
  /home/diezec/xilinx_linux/include/asm-generic/getorder.h \
  /home/diezec/xilinx_linux/include/linux/bottom_half.h \
  /home/diezec/xilinx_linux/include/linux/spinlock_types.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/spinlock_types.h \
  /home/diezec/xilinx_linux/include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
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
  /home/diezec/xilinx_linux/include/linux/wait.h \
  arch/arm/include/generated/asm/current.h \
  /home/diezec/xilinx_linux/include/asm-generic/current.h \
  /home/diezec/xilinx_linux/include/uapi/linux/wait.h \
  /home/diezec/xilinx_linux/include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  /home/diezec/xilinx_linux/include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  /home/diezec/xilinx_linux/include/linux/seqlock.h \
  /home/diezec/xilinx_linux/include/linux/nodemask.h \
    $(wildcard include/config/movable/node.h) \
  /home/diezec/xilinx_linux/include/linux/bitmap.h \
    $(wildcard include/config/s390.h) \
  /home/diezec/xilinx_linux/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  /home/diezec/xilinx_linux/include/uapi/linux/string.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/string.h \
  /home/diezec/xilinx_linux/include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  /home/diezec/xilinx_linux/include/linux/page-flags-layout.h \
  include/generated/bounds.h \
  /home/diezec/xilinx_linux/include/linux/memory_hotplug.h \
    $(wildcard include/config/memory/hotremove.h) \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/have/bootmem/info/node.h) \
  /home/diezec/xilinx_linux/include/linux/notifier.h \
  /home/diezec/xilinx_linux/include/linux/mutex.h \
    $(wildcard include/config/debug/mutexes.h) \
    $(wildcard include/config/mutex/spin/on/owner.h) \
  /home/diezec/xilinx_linux/include/linux/osq_lock.h \
  /home/diezec/xilinx_linux/include/linux/rwsem.h \
    $(wildcard include/config/rwsem/spin/on/owner.h) \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  arch/arm/include/generated/asm/rwsem.h \
  /home/diezec/xilinx_linux/include/asm-generic/rwsem.h \
  /home/diezec/xilinx_linux/include/linux/srcu.h \
  /home/diezec/xilinx_linux/include/linux/rcupdate.h \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/rcu/trace.h) \
    $(wildcard include/config/rcu/stall/common.h) \
    $(wildcard include/config/no/hz/full.h) \
    $(wildcard include/config/rcu/nocb/cpu.h) \
    $(wildcard include/config/tasks/rcu.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/prove/rcu.h) \
    $(wildcard include/config/rcu/boost.h) \
    $(wildcard include/config/rcu/nocb/cpu/all.h) \
    $(wildcard include/config/no/hz/full/sysidle.h) \
  /home/diezec/xilinx_linux/include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
  /home/diezec/xilinx_linux/include/linux/completion.h \
  /home/diezec/xilinx_linux/include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  /home/diezec/xilinx_linux/include/linux/ktime.h \
  /home/diezec/xilinx_linux/include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  /home/diezec/xilinx_linux/include/linux/math64.h \
    $(wildcard include/config/arch/supports/int128.h) \
  /home/diezec/xilinx_linux/include/linux/time64.h \
  /home/diezec/xilinx_linux/include/uapi/linux/time.h \
  /home/diezec/xilinx_linux/include/linux/jiffies.h \
  /home/diezec/xilinx_linux/include/linux/timex.h \
  /home/diezec/xilinx_linux/include/uapi/linux/timex.h \
  /home/diezec/xilinx_linux/include/uapi/linux/param.h \
  arch/arm/include/generated/asm/param.h \
  /home/diezec/xilinx_linux/include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  /home/diezec/xilinx_linux/include/uapi/asm-generic/param.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/timex.h \
  include/generated/timeconst.h \
  /home/diezec/xilinx_linux/include/linux/timekeeping.h \
  /home/diezec/xilinx_linux/include/linux/rcutree.h \
  /home/diezec/xilinx_linux/include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
    $(wildcard include/config/sysfs.h) \
    $(wildcard include/config/wq/watchdog.h) \
  /home/diezec/xilinx_linux/include/linux/timer.h \
    $(wildcard include/config/timer/stats.h) \
    $(wildcard include/config/debug/objects/timers.h) \
    $(wildcard include/config/no/hz/common.h) \
  /home/diezec/xilinx_linux/include/linux/sysctl.h \
  /home/diezec/xilinx_linux/include/linux/rbtree.h \
  /home/diezec/xilinx_linux/include/linux/uidgid.h \
    $(wildcard include/config/multiuser.h) \
    $(wildcard include/config/user/ns.h) \
  /home/diezec/xilinx_linux/include/linux/highuid.h \
  /home/diezec/xilinx_linux/include/uapi/linux/sysctl.h \
  /home/diezec/xilinx_linux/include/linux/topology.h \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
    $(wildcard include/config/sched/smt.h) \
  /home/diezec/xilinx_linux/include/linux/smp.h \
    $(wildcard include/config/up/late/init.h) \
  /home/diezec/xilinx_linux/include/linux/llist.h \
    $(wildcard include/config/arch/have/nmi/safe/cmpxchg.h) \
  /home/diezec/xilinx_linux/arch/arm/include/asm/smp.h \
  /home/diezec/xilinx_linux/include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  /home/diezec/xilinx_linux/arch/arm/include/asm/percpu.h \
  /home/diezec/xilinx_linux/include/asm-generic/percpu.h \
  /home/diezec/xilinx_linux/include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
  /home/diezec/xilinx_linux/arch/arm/include/asm/topology.h \
    $(wildcard include/config/arm/cpu/topology.h) \
  /home/diezec/xilinx_linux/include/asm-generic/topology.h \
  /home/diezec/xilinx_linux/include/linux/sched.h \
    $(wildcard include/config/sched/debug.h) \
    $(wildcard include/config/lockup/detector.h) \
    $(wildcard include/config/detect/hung/task.h) \
    $(wildcard include/config/core/dump/default/elf/headers.h) \
    $(wildcard include/config/virt/cpu/accounting/native.h) \
    $(wildcard include/config/sched/autogroup.h) \
    $(wildcard include/config/bsd/process/acct.h) \
    $(wildcard include/config/taskstats.h) \
    $(wildcard include/config/audit.h) \
    $(wildcard include/config/inotify/user.h) \
    $(wildcard include/config/fanotify.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/posix/mqueue.h) \
    $(wildcard include/config/keys.h) \
    $(wildcard include/config/perf/events.h) \
    $(wildcard include/config/bpf/syscall.h) \
    $(wildcard include/config/sched/info.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/sched/mc.h) \
    $(wildcard include/config/fair/group/sched.h) \
    $(wildcard include/config/rt/group/sched.h) \
    $(wildcard include/config/cgroup/sched.h) \
    $(wildcard include/config/blk/dev/io/trace.h) \
    $(wildcard include/config/slob.h) \
    $(wildcard include/config/compat/brk.h) \
    $(wildcard include/config/cc/stackprotector.h) \
    $(wildcard include/config/virt/cpu/accounting/gen.h) \
    $(wildcard include/config/sysvipc.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/ubsan.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/task/xacct.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/cgroups.h) \
    $(wildcard include/config/futex.h) \
    $(wildcard include/config/arch/want/batched/unmap/tlb/flush.h) \
    $(wildcard include/config/fault/injection.h) \
    $(wildcard include/config/latencytop.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/kcov.h) \
    $(wildcard include/config/uprobes.h) \
    $(wildcard include/config/bcache.h) \
    $(wildcard include/config/vmap/stack.h) \
    $(wildcard include/config/arch/wants/dynamic/task/struct.h) \
    $(wildcard include/config/have/unstable/sched/clock.h) \
    $(wildcard include/config/irq/time/accounting.h) \
    $(wildcard include/config/stack/growsup.h) \
    $(wildcard include/config/have/copy/thread/tls.h) \
    $(wildcard include/config/have/exit/thread.h) \
    $(wildcard include/config/cpu/freq.h) \
  /home/diezec/xilinx_linux/include/uapi/linux/sched.h \
  /home/diezec/xilinx_linux/include/linux/sched/prio.h \
  /home/diezec/xilinx_linux/include/linux/capability.h \
  /home/diezec/xilinx_linux/include/uapi/linux/capability.h \
  /home/diezec/xilinx_linux/include/linux/plist.h \
    $(wildcard include/config/debug/pi/list.h) \
  /home/diezec/xilinx_linux/include/linux/mm_types.h \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/arch/enable/split/pmd/ptlock.h) \
    $(wildcard include/config/have/cmpxchg/double.h) \
    $(wildcard include/config/have/aligned/struct/page.h) \
    $(wildcard include/config/kmemcheck.h) \
    $(wildcard include/config/userfaultfd.h) \
    $(wildcard include/config/pgtable/levels.h) \
    $(wildcard include/config/aio.h) \
    $(wildcard include/config/mmu/notifier.h) \
    $(wildcard include/config/x86/intel/mpx.h) \
  /home/diezec/xilinx_linux/include/linux/auxvec.h \
  /home/diezec/xilinx_linux/include/uapi/linux/auxvec.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/auxvec.h \
  /home/diezec/xilinx_linux/arch/arm/include/uapi/asm/auxvec.h \
  /home/diezec/xilinx_linux/include/linux/uprobes.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/mmu.h \
    $(wildcard include/config/cpu/has/asid.h) \
    $(wildcard include/config/vdso.h) \
  /home/diezec/xilinx_linux/include/linux/cputime.h \
  arch/arm/include/generated/asm/cputime.h \
  /home/diezec/xilinx_linux/include/asm-generic/cputime.h \
    $(wildcard include/config/virt/cpu/accounting.h) \
  /home/diezec/xilinx_linux/include/asm-generic/cputime_jiffies.h \
  /home/diezec/xilinx_linux/include/linux/sem.h \
  /home/diezec/xilinx_linux/include/uapi/linux/sem.h \
  /home/diezec/xilinx_linux/include/linux/ipc.h \
  /home/diezec/xilinx_linux/include/uapi/linux/ipc.h \
  arch/arm/include/generated/asm/ipcbuf.h \
  /home/diezec/xilinx_linux/include/uapi/asm-generic/ipcbuf.h \
  arch/arm/include/generated/asm/sembuf.h \
  /home/diezec/xilinx_linux/include/uapi/asm-generic/sembuf.h \
  /home/diezec/xilinx_linux/include/linux/shm.h \
  /home/diezec/xilinx_linux/include/uapi/linux/shm.h \
  arch/arm/include/generated/asm/shmbuf.h \
  /home/diezec/xilinx_linux/include/uapi/asm-generic/shmbuf.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/shmparam.h \
  /home/diezec/xilinx_linux/include/linux/signal.h \
    $(wildcard include/config/old/sigaction.h) \
  /home/diezec/xilinx_linux/include/uapi/linux/signal.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/signal.h \
  /home/diezec/xilinx_linux/arch/arm/include/uapi/asm/signal.h \
  /home/diezec/xilinx_linux/include/uapi/asm-generic/signal-defs.h \
  /home/diezec/xilinx_linux/arch/arm/include/uapi/asm/sigcontext.h \
  arch/arm/include/generated/asm/siginfo.h \
  /home/diezec/xilinx_linux/include/asm-generic/siginfo.h \
  /home/diezec/xilinx_linux/include/uapi/asm-generic/siginfo.h \
  /home/diezec/xilinx_linux/include/linux/pid.h \
  /home/diezec/xilinx_linux/include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
    $(wildcard include/config/have/arch/seccomp/filter.h) \
    $(wildcard include/config/seccomp/filter.h) \
    $(wildcard include/config/checkpoint/restore.h) \
  /home/diezec/xilinx_linux/include/uapi/linux/seccomp.h \
  /home/diezec/xilinx_linux/include/linux/rculist.h \
  /home/diezec/xilinx_linux/include/linux/rtmutex.h \
    $(wildcard include/config/debug/rt/mutexes.h) \
  /home/diezec/xilinx_linux/include/linux/resource.h \
  /home/diezec/xilinx_linux/include/uapi/linux/resource.h \
  arch/arm/include/generated/asm/resource.h \
  /home/diezec/xilinx_linux/include/asm-generic/resource.h \
  /home/diezec/xilinx_linux/include/uapi/asm-generic/resource.h \
  /home/diezec/xilinx_linux/include/linux/hrtimer.h \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/time/low/res.h) \
    $(wildcard include/config/timerfd.h) \
  /home/diezec/xilinx_linux/include/linux/timerqueue.h \
  /home/diezec/xilinx_linux/include/linux/kcov.h \
  /home/diezec/xilinx_linux/include/uapi/linux/kcov.h \
  /home/diezec/xilinx_linux/include/linux/task_io_accounting.h \
    $(wildcard include/config/task/io/accounting.h) \
  /home/diezec/xilinx_linux/include/linux/latencytop.h \
  /home/diezec/xilinx_linux/include/linux/cred.h \
    $(wildcard include/config/debug/credentials.h) \
    $(wildcard include/config/security.h) \
  /home/diezec/xilinx_linux/include/linux/key.h \
  /home/diezec/xilinx_linux/include/linux/assoc_array.h \
    $(wildcard include/config/associative/array.h) \
  /home/diezec/xilinx_linux/include/linux/selinux.h \
    $(wildcard include/config/security/selinux.h) \
  /home/diezec/xilinx_linux/include/uapi/linux/magic.h \
  /home/diezec/xilinx_linux/include/linux/cgroup-defs.h \
    $(wildcard include/config/sock/cgroup/data.h) \
  /home/diezec/xilinx_linux/include/uapi/linux/limits.h \
  /home/diezec/xilinx_linux/include/linux/idr.h \
  /home/diezec/xilinx_linux/include/linux/percpu-refcount.h \
  /home/diezec/xilinx_linux/include/linux/percpu-rwsem.h \
  /home/diezec/xilinx_linux/include/linux/rcu_sync.h \
  /home/diezec/xilinx_linux/include/linux/cgroup_subsys.h \
    $(wildcard include/config/cgroup/cpuacct.h) \
    $(wildcard include/config/blk/cgroup.h) \
    $(wildcard include/config/cgroup/device.h) \
    $(wildcard include/config/cgroup/freezer.h) \
    $(wildcard include/config/cgroup/net/classid.h) \
    $(wildcard include/config/cgroup/perf.h) \
    $(wildcard include/config/cgroup/net/prio.h) \
    $(wildcard include/config/cgroup/hugetlb.h) \
    $(wildcard include/config/cgroup/pids.h) \
    $(wildcard include/config/cgroup/debug.h) \
  /home/diezec/xilinx_linux/include/linux/net.h \
  /home/diezec/xilinx_linux/include/linux/random.h \
    $(wildcard include/config/gcc/plugin/latent/entropy.h) \
    $(wildcard include/config/arch/random.h) \
  /home/diezec/xilinx_linux/include/linux/once.h \
  /home/diezec/xilinx_linux/include/linux/jump_label.h \
    $(wildcard include/config/jump/label.h) \
  /home/diezec/xilinx_linux/include/uapi/linux/random.h \
  /home/diezec/xilinx_linux/include/uapi/linux/ioctl.h \
  arch/arm/include/generated/asm/ioctl.h \
  /home/diezec/xilinx_linux/include/asm-generic/ioctl.h \
  /home/diezec/xilinx_linux/include/uapi/asm-generic/ioctl.h \
  /home/diezec/xilinx_linux/include/linux/irqnr.h \
  /home/diezec/xilinx_linux/include/uapi/linux/irqnr.h \
  /home/diezec/xilinx_linux/include/linux/fcntl.h \
  /home/diezec/xilinx_linux/include/uapi/linux/fcntl.h \
  /home/diezec/xilinx_linux/arch/arm/include/uapi/asm/fcntl.h \
  /home/diezec/xilinx_linux/include/uapi/asm-generic/fcntl.h \
  /home/diezec/xilinx_linux/include/linux/kmemcheck.h \
  /home/diezec/xilinx_linux/include/linux/fs.h \
    $(wildcard include/config/fs/posix/acl.h) \
    $(wildcard include/config/cgroup/writeback.h) \
    $(wildcard include/config/ima.h) \
    $(wildcard include/config/fsnotify.h) \
    $(wildcard include/config/fs/encryption.h) \
    $(wildcard include/config/file/locking.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/fs/dax.h) \
    $(wildcard include/config/mandatory/file/locking.h) \
    $(wildcard include/config/migration.h) \
  /home/diezec/xilinx_linux/include/linux/kdev_t.h \
  /home/diezec/xilinx_linux/include/uapi/linux/kdev_t.h \
  /home/diezec/xilinx_linux/include/linux/dcache.h \
  /home/diezec/xilinx_linux/include/linux/rculist_bl.h \
  /home/diezec/xilinx_linux/include/linux/list_bl.h \
  /home/diezec/xilinx_linux/include/linux/bit_spinlock.h \
  /home/diezec/xilinx_linux/include/linux/lockref.h \
    $(wildcard include/config/arch/use/cmpxchg/lockref.h) \
  /home/diezec/xilinx_linux/include/linux/stringhash.h \
    $(wildcard include/config/dcache/word/access.h) \
  /home/diezec/xilinx_linux/include/linux/hash.h \
    $(wildcard include/config/have/arch/hash.h) \
  /home/diezec/xilinx_linux/include/linux/path.h \
  /home/diezec/xilinx_linux/include/linux/stat.h \
  /home/diezec/xilinx_linux/arch/arm/include/uapi/asm/stat.h \
  /home/diezec/xilinx_linux/include/uapi/linux/stat.h \
  /home/diezec/xilinx_linux/include/linux/list_lru.h \
  /home/diezec/xilinx_linux/include/linux/shrinker.h \
  /home/diezec/xilinx_linux/include/linux/radix-tree.h \
    $(wildcard include/config/radix/tree/multiorder.h) \
  /home/diezec/xilinx_linux/include/linux/semaphore.h \
  /home/diezec/xilinx_linux/include/uapi/linux/fiemap.h \
  /home/diezec/xilinx_linux/include/linux/migrate_mode.h \
  /home/diezec/xilinx_linux/include/linux/blk_types.h \
    $(wildcard include/config/blk/dev/integrity.h) \
  /home/diezec/xilinx_linux/include/linux/bvec.h \
  /home/diezec/xilinx_linux/include/linux/delayed_call.h \
  /home/diezec/xilinx_linux/include/uapi/linux/fs.h \
  /home/diezec/xilinx_linux/include/linux/quota.h \
    $(wildcard include/config/quota/netlink/interface.h) \
  /home/diezec/xilinx_linux/include/linux/percpu_counter.h \
  /home/diezec/xilinx_linux/include/uapi/linux/dqblk_xfs.h \
  /home/diezec/xilinx_linux/include/linux/dqblk_v1.h \
  /home/diezec/xilinx_linux/include/linux/dqblk_v2.h \
  /home/diezec/xilinx_linux/include/linux/dqblk_qtree.h \
  /home/diezec/xilinx_linux/include/linux/projid.h \
  /home/diezec/xilinx_linux/include/uapi/linux/quota.h \
  /home/diezec/xilinx_linux/include/linux/nfs_fs_i.h \
  /home/diezec/xilinx_linux/include/uapi/linux/net.h \
  /home/diezec/xilinx_linux/include/linux/mm.h \
    $(wildcard include/config/have/arch/mmap/rnd/bits.h) \
    $(wildcard include/config/have/arch/mmap/rnd/compat/bits.h) \
    $(wildcard include/config/mem/soft/dirty.h) \
    $(wildcard include/config/arch/uses/high/vma/flags.h) \
    $(wildcard include/config/x86.h) \
    $(wildcard include/config/x86/intel/memory/protection/keys.h) \
    $(wildcard include/config/ppc.h) \
    $(wildcard include/config/parisc.h) \
    $(wildcard include/config/metag.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/shmem.h) \
    $(wildcard include/config/debug/vm/rb.h) \
    $(wildcard include/config/page/poisoning.h) \
    $(wildcard include/config/debug/pagealloc.h) \
    $(wildcard include/config/hibernation.h) \
    $(wildcard include/config/hugetlbfs.h) \
  /home/diezec/xilinx_linux/include/linux/debug_locks.h \
    $(wildcard include/config/debug/locking/api/selftests.h) \
  /home/diezec/xilinx_linux/include/linux/range.h \
  /home/diezec/xilinx_linux/include/linux/page_ext.h \
    $(wildcard include/config/idle/page/tracking.h) \
  /home/diezec/xilinx_linux/include/linux/stacktrace.h \
    $(wildcard include/config/stacktrace.h) \
    $(wildcard include/config/user/stacktrace/support.h) \
  /home/diezec/xilinx_linux/include/linux/stackdepot.h \
  /home/diezec/xilinx_linux/include/linux/page_ref.h \
    $(wildcard include/config/debug/page/ref.h) \
  /home/diezec/xilinx_linux/include/linux/page-flags.h \
    $(wildcard include/config/arch/uses/pg/uncached.h) \
    $(wildcard include/config/memory/failure.h) \
    $(wildcard include/config/swap.h) \
    $(wildcard include/config/ksm.h) \
  /home/diezec/xilinx_linux/include/linux/tracepoint-defs.h \
  /home/diezec/xilinx_linux/include/linux/static_key.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/pgtable.h \
    $(wildcard include/config/highpte.h) \
  /home/diezec/xilinx_linux/arch/arm/include/asm/proc-fns.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/glue-proc.h \
    $(wildcard include/config/cpu/arm7tdmi.h) \
    $(wildcard include/config/cpu/arm720t.h) \
    $(wildcard include/config/cpu/arm740t.h) \
    $(wildcard include/config/cpu/arm9tdmi.h) \
    $(wildcard include/config/cpu/arm920t.h) \
    $(wildcard include/config/cpu/arm922t.h) \
    $(wildcard include/config/cpu/arm925t.h) \
    $(wildcard include/config/cpu/arm926t.h) \
    $(wildcard include/config/cpu/arm940t.h) \
    $(wildcard include/config/cpu/arm946e.h) \
    $(wildcard include/config/cpu/arm1020.h) \
    $(wildcard include/config/cpu/arm1020e.h) \
    $(wildcard include/config/cpu/arm1022.h) \
    $(wildcard include/config/cpu/arm1026.h) \
    $(wildcard include/config/cpu/mohawk.h) \
    $(wildcard include/config/cpu/feroceon.h) \
    $(wildcard include/config/cpu/v6k.h) \
    $(wildcard include/config/cpu/pj4b.h) \
    $(wildcard include/config/cpu/v7.h) \
  /home/diezec/xilinx_linux/include/asm-generic/pgtable-nopud.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/pgtable-hwdef.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/pgtable-2level-hwdef.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/tlbflush.h \
    $(wildcard include/config/smp/on/up.h) \
    $(wildcard include/config/cpu/tlb/v4wt.h) \
    $(wildcard include/config/cpu/tlb/fa.h) \
    $(wildcard include/config/cpu/tlb/v4wbi.h) \
    $(wildcard include/config/cpu/tlb/feroceon.h) \
    $(wildcard include/config/cpu/tlb/v4wb.h) \
    $(wildcard include/config/cpu/tlb/v6.h) \
    $(wildcard include/config/cpu/tlb/v7.h) \
    $(wildcard include/config/arm/errata/720789.h) \
    $(wildcard include/config/arm/errata/798181.h) \
  /home/diezec/xilinx_linux/arch/arm/include/asm/pgtable-2level.h \
  /home/diezec/xilinx_linux/include/asm-generic/pgtable.h \
    $(wildcard include/config/have/arch/soft/dirty.h) \
    $(wildcard include/config/have/arch/huge/vmap.h) \
  /home/diezec/xilinx_linux/include/linux/huge_mm.h \
  /home/diezec/xilinx_linux/include/linux/vmstat.h \
    $(wildcard include/config/vm/event/counters.h) \
    $(wildcard include/config/debug/tlbflush.h) \
    $(wildcard include/config/debug/vm/vmacache.h) \
  /home/diezec/xilinx_linux/include/linux/vm_event_item.h \
    $(wildcard include/config/memory/balloon.h) \
    $(wildcard include/config/balloon/compaction.h) \
  /home/diezec/xilinx_linux/include/linux/interrupt.h \
    $(wildcard include/config/irq/forced/threading.h) \
    $(wildcard include/config/generic/irq/probe.h) \
  /home/diezec/xilinx_linux/include/linux/irqreturn.h \
  /home/diezec/xilinx_linux/include/linux/hardirq.h \
  /home/diezec/xilinx_linux/include/linux/ftrace_irq.h \
    $(wildcard include/config/ftrace/nmi/enter.h) \
    $(wildcard include/config/hwlat/tracer.h) \
  /home/diezec/xilinx_linux/include/linux/vtime.h \
  /home/diezec/xilinx_linux/include/linux/context_tracking_state.h \
    $(wildcard include/config/context/tracking.h) \
  /home/diezec/xilinx_linux/arch/arm/include/asm/hardirq.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/irq.h \
    $(wildcard include/config/sparse/irq.h) \
    $(wildcard include/config/multi/irq/handler.h) \
  /home/diezec/xilinx_linux/include/linux/irq_cpustat.h \
  /home/diezec/xilinx_linux/include/linux/kref.h \
  /home/diezec/xilinx_linux/include/linux/poll.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/uaccess.h \
    $(wildcard include/config/have/efficient/unaligned/access.h) \
    $(wildcard include/config/cpu/sw/domain/pan.h) \
    $(wildcard include/config/cpu/use/domains.h) \
    $(wildcard include/config/uaccess/with/memcpy.h) \
  /home/diezec/xilinx_linux/arch/arm/include/asm/domain.h \
    $(wildcard include/config/io/36.h) \
    $(wildcard include/config/cpu/cp15/mmu.h) \
  /home/diezec/xilinx_linux/include/uapi/linux/poll.h \
  arch/arm/include/generated/asm/poll.h \
  /home/diezec/xilinx_linux/include/uapi/asm-generic/poll.h \
  /home/diezec/xilinx_linux/include/linux/netfilter_ipv4.h \
  /home/diezec/xilinx_linux/include/uapi/linux/netfilter_ipv4.h \
  /home/diezec/xilinx_linux/include/linux/netfilter.h \
    $(wildcard include/config/netfilter.h) \
    $(wildcard include/config/nf/nat/needed.h) \
    $(wildcard include/config/nf/conntrack.h) \
  /home/diezec/xilinx_linux/include/linux/skbuff.h \
    $(wildcard include/config/bridge/netfilter.h) \
    $(wildcard include/config/xfrm.h) \
    $(wildcard include/config/ipv6/ndisc/nodetype.h) \
    $(wildcard include/config/net/switchdev.h) \
    $(wildcard include/config/net/sched.h) \
    $(wildcard include/config/net/cls/act.h) \
    $(wildcard include/config/net/rx/busy/poll.h) \
    $(wildcard include/config/xps.h) \
    $(wildcard include/config/network/secmark.h) \
    $(wildcard include/config/network/phy/timestamping.h) \
    $(wildcard include/config/netfilter/xt/target/trace.h) \
    $(wildcard include/config/nf/tables.h) \
  /home/diezec/xilinx_linux/include/linux/textsearch.h \
  /home/diezec/xilinx_linux/include/linux/slab.h \
    $(wildcard include/config/debug/slab.h) \
    $(wildcard include/config/failslab.h) \
    $(wildcard include/config/have/hardened/usercopy/allocator.h) \
    $(wildcard include/config/slab.h) \
    $(wildcard include/config/slub.h) \
  /home/diezec/xilinx_linux/include/linux/kmemleak.h \
    $(wildcard include/config/debug/kmemleak.h) \
  /home/diezec/xilinx_linux/include/linux/kasan.h \
  /home/diezec/xilinx_linux/include/net/checksum.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/checksum.h \
  /home/diezec/xilinx_linux/include/linux/in6.h \
  /home/diezec/xilinx_linux/include/uapi/linux/in6.h \
  /home/diezec/xilinx_linux/include/linux/dma-mapping.h \
    $(wildcard include/config/have/generic/dma/coherent.h) \
    $(wildcard include/config/has/dma.h) \
    $(wildcard include/config/arch/has/dma/set/coherent/mask.h) \
    $(wildcard include/config/need/dma/map/state.h) \
    $(wildcard include/config/dma/api/debug.h) \
  /home/diezec/xilinx_linux/include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/generic/msi/irq/domain.h) \
    $(wildcard include/config/pinctrl.h) \
    $(wildcard include/config/generic/msi/irq.h) \
    $(wildcard include/config/dma/cma.h) \
    $(wildcard include/config/of.h) \
    $(wildcard include/config/devtmpfs.h) \
    $(wildcard include/config/sysfs/deprecated.h) \
  /home/diezec/xilinx_linux/include/linux/ioport.h \
  /home/diezec/xilinx_linux/include/linux/kobject.h \
    $(wildcard include/config/uevent/helper.h) \
    $(wildcard include/config/debug/kobject/release.h) \
  /home/diezec/xilinx_linux/include/linux/sysfs.h \
  /home/diezec/xilinx_linux/include/linux/kernfs.h \
    $(wildcard include/config/kernfs.h) \
  /home/diezec/xilinx_linux/include/linux/kobject_ns.h \
  /home/diezec/xilinx_linux/include/linux/klist.h \
  /home/diezec/xilinx_linux/include/linux/pinctrl/devinfo.h \
    $(wildcard include/config/pm.h) \
  /home/diezec/xilinx_linux/include/linux/pinctrl/consumer.h \
  /home/diezec/xilinx_linux/include/linux/seq_file.h \
  /home/diezec/xilinx_linux/include/linux/pinctrl/pinctrl-state.h \
  /home/diezec/xilinx_linux/include/linux/pm.h \
    $(wildcard include/config/vt/console/sleep.h) \
    $(wildcard include/config/pm/clk.h) \
    $(wildcard include/config/pm/generic/domains.h) \
  /home/diezec/xilinx_linux/include/linux/ratelimit.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/device.h \
    $(wildcard include/config/dmabounce.h) \
    $(wildcard include/config/iommu/api.h) \
    $(wildcard include/config/arm/dma/use/iommu.h) \
    $(wildcard include/config/arch/omap.h) \
  /home/diezec/xilinx_linux/include/linux/pm_wakeup.h \
  /home/diezec/xilinx_linux/include/linux/dma-debug.h \
  /home/diezec/xilinx_linux/include/linux/dma-direction.h \
  /home/diezec/xilinx_linux/include/linux/scatterlist.h \
    $(wildcard include/config/debug/sg.h) \
    $(wildcard include/config/need/sg/dma/length.h) \
    $(wildcard include/config/arch/has/sg/chain.h) \
    $(wildcard include/config/sg/pool.h) \
  /home/diezec/xilinx_linux/arch/arm/include/asm/io.h \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/need/mach/io/h.h) \
    $(wildcard include/config/pcmcia/soc/common.h) \
    $(wildcard include/config/isa.h) \
    $(wildcard include/config/pccard.h) \
  /home/diezec/xilinx_linux/include/asm-generic/pci_iomap.h \
    $(wildcard include/config/no/generic/pci/ioport/map.h) \
    $(wildcard include/config/generic/pci/iomap.h) \
  /home/diezec/xilinx_linux/include/xen/xen.h \
    $(wildcard include/config/xen.h) \
    $(wildcard include/config/xen/dom0.h) \
    $(wildcard include/config/xen/pvh.h) \
  /home/diezec/xilinx_linux/include/asm-generic/io.h \
    $(wildcard include/config/generic/iomap.h) \
    $(wildcard include/config/has/ioport/map.h) \
    $(wildcard include/config/virt/to/bus.h) \
  /home/diezec/xilinx_linux/include/linux/vmalloc.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/dma-mapping.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/xen/hypervisor.h \
  /home/diezec/xilinx_linux/include/linux/netdev_features.h \
  /home/diezec/xilinx_linux/include/net/flow_dissector.h \
  /home/diezec/xilinx_linux/include/uapi/linux/if_ether.h \
  /home/diezec/xilinx_linux/include/linux/splice.h \
  /home/diezec/xilinx_linux/include/linux/pipe_fs_i.h \
  /home/diezec/xilinx_linux/include/uapi/linux/if_packet.h \
  /home/diezec/xilinx_linux/include/net/flow.h \
  /home/diezec/xilinx_linux/include/uapi/linux/if.h \
  /home/diezec/xilinx_linux/include/uapi/linux/hdlc/ioctl.h \
  /home/diezec/xilinx_linux/include/linux/netfilter_defs.h \
  /home/diezec/xilinx_linux/include/uapi/linux/netfilter.h \
  /home/diezec/xilinx_linux/include/linux/netdevice.h \
    $(wildcard include/config/dcb.h) \
    $(wildcard include/config/hyperv/net.h) \
    $(wildcard include/config/wlan.h) \
    $(wildcard include/config/ax25.h) \
    $(wildcard include/config/mac80211/mesh.h) \
    $(wildcard include/config/net/ipip.h) \
    $(wildcard include/config/net/ipgre.h) \
    $(wildcard include/config/ipv6/sit.h) \
    $(wildcard include/config/ipv6/tunnel.h) \
    $(wildcard include/config/rps.h) \
    $(wildcard include/config/netpoll.h) \
    $(wildcard include/config/bql.h) \
    $(wildcard include/config/rfs/accel.h) \
    $(wildcard include/config/fcoe.h) \
    $(wildcard include/config/net/poll/controller.h) \
    $(wildcard include/config/libfcoe.h) \
    $(wildcard include/config/wireless/ext.h) \
    $(wildcard include/config/net/l3/master/dev.h) \
    $(wildcard include/config/vlan/8021q.h) \
    $(wildcard include/config/net/dsa.h) \
    $(wildcard include/config/tipc.h) \
    $(wildcard include/config/mpls/routing.h) \
    $(wildcard include/config/netfilter/ingress.h) \
    $(wildcard include/config/net/flow/limit.h) \
  /home/diezec/xilinx_linux/include/linux/delay.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/delay.h \
  /home/diezec/xilinx_linux/include/linux/dmaengine.h \
    $(wildcard include/config/async/tx/enable/channel/switch.h) \
    $(wildcard include/config/dma/engine.h) \
    $(wildcard include/config/rapidio/dma/engine.h) \
    $(wildcard include/config/async/tx/dma.h) \
  /home/diezec/xilinx_linux/include/linux/dynamic_queue_limits.h \
  /home/diezec/xilinx_linux/include/linux/ethtool.h \
  /home/diezec/xilinx_linux/include/linux/compat.h \
    $(wildcard include/config/compat/old/sigaction.h) \
    $(wildcard include/config/odd/rt/sigaction.h) \
  /home/diezec/xilinx_linux/include/uapi/linux/ethtool.h \
  /home/diezec/xilinx_linux/include/linux/if_ether.h \
  /home/diezec/xilinx_linux/include/net/net_namespace.h \
    $(wildcard include/config/ieee802154/6lowpan.h) \
    $(wildcard include/config/ip/sctp.h) \
    $(wildcard include/config/ip/dccp.h) \
    $(wildcard include/config/nf/defrag/ipv6.h) \
    $(wildcard include/config/netfilter/netlink/acct.h) \
    $(wildcard include/config/nf/ct/netlink/timeout.h) \
    $(wildcard include/config/wext/core.h) \
    $(wildcard include/config/ip/vs.h) \
    $(wildcard include/config/mpls.h) \
    $(wildcard include/config/net/ns.h) \
  /home/diezec/xilinx_linux/include/net/netns/core.h \
  /home/diezec/xilinx_linux/include/net/netns/mib.h \
    $(wildcard include/config/xfrm/statistics.h) \
  /home/diezec/xilinx_linux/include/net/snmp.h \
  /home/diezec/xilinx_linux/include/uapi/linux/snmp.h \
  /home/diezec/xilinx_linux/include/linux/u64_stats_sync.h \
  /home/diezec/xilinx_linux/include/net/netns/unix.h \
  /home/diezec/xilinx_linux/include/net/netns/packet.h \
  /home/diezec/xilinx_linux/include/net/netns/ipv4.h \
    $(wildcard include/config/ip/multiple/tables.h) \
    $(wildcard include/config/ip/route/classid.h) \
    $(wildcard include/config/ip/mroute/multiple/tables.h) \
    $(wildcard include/config/ip/route/multipath.h) \
  /home/diezec/xilinx_linux/include/net/inet_frag.h \
  /home/diezec/xilinx_linux/include/net/netns/ipv6.h \
    $(wildcard include/config/ipv6/multiple/tables.h) \
    $(wildcard include/config/ipv6/mroute.h) \
    $(wildcard include/config/ipv6/mroute/multiple/tables.h) \
  /home/diezec/xilinx_linux/include/net/dst_ops.h \
  /home/diezec/xilinx_linux/include/net/netns/ieee802154_6lowpan.h \
  /home/diezec/xilinx_linux/include/net/netns/sctp.h \
  /home/diezec/xilinx_linux/include/net/netns/dccp.h \
  /home/diezec/xilinx_linux/include/net/netns/netfilter.h \
  /home/diezec/xilinx_linux/include/net/netns/x_tables.h \
    $(wildcard include/config/bridge/nf/ebtables.h) \
  /home/diezec/xilinx_linux/include/net/netns/nftables.h \
  /home/diezec/xilinx_linux/include/net/netns/xfrm.h \
  /home/diezec/xilinx_linux/include/uapi/linux/xfrm.h \
  /home/diezec/xilinx_linux/include/net/flowcache.h \
  /home/diezec/xilinx_linux/include/net/netns/mpls.h \
  /home/diezec/xilinx_linux/include/linux/ns_common.h \
  /home/diezec/xilinx_linux/include/linux/seq_file_net.h \
  /home/diezec/xilinx_linux/include/linux/nsproxy.h \
  /home/diezec/xilinx_linux/include/net/dsa.h \
    $(wildcard include/config/net/dsa/hwmon.h) \
  /home/diezec/xilinx_linux/include/linux/of.h \
    $(wildcard include/config/sparc.h) \
    $(wildcard include/config/of/dynamic.h) \
    $(wildcard include/config/attach/node.h) \
    $(wildcard include/config/detach/node.h) \
    $(wildcard include/config/add/property.h) \
    $(wildcard include/config/remove/property.h) \
    $(wildcard include/config/update/property.h) \
    $(wildcard include/config/of/numa.h) \
    $(wildcard include/config/no/change.h) \
    $(wildcard include/config/change/add.h) \
    $(wildcard include/config/change/remove.h) \
    $(wildcard include/config/of/resolve.h) \
    $(wildcard include/config/of/overlay.h) \
  /home/diezec/xilinx_linux/include/linux/mod_devicetable.h \
  /home/diezec/xilinx_linux/include/linux/uuid.h \
  /home/diezec/xilinx_linux/include/uapi/linux/uuid.h \
  /home/diezec/xilinx_linux/include/linux/property.h \
  /home/diezec/xilinx_linux/include/linux/fwnode.h \
  /home/diezec/xilinx_linux/include/linux/phy.h \
  /home/diezec/xilinx_linux/include/linux/mdio.h \
  /home/diezec/xilinx_linux/include/uapi/linux/mdio.h \
  /home/diezec/xilinx_linux/include/linux/mii.h \
  /home/diezec/xilinx_linux/include/uapi/linux/mii.h \
  /home/diezec/xilinx_linux/include/linux/module.h \
    $(wildcard include/config/modules/tree/lookup.h) \
    $(wildcard include/config/livepatch.h) \
    $(wildcard include/config/module/sig.h) \
    $(wildcard include/config/kallsyms.h) \
    $(wildcard include/config/tracepoints.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/module/unload.h) \
    $(wildcard include/config/constructors.h) \
    $(wildcard include/config/debug/set/module/ronx.h) \
  /home/diezec/xilinx_linux/include/linux/elf.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/elf.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/vdso_datapage.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/user.h \
  /home/diezec/xilinx_linux/include/uapi/linux/elf.h \
  /home/diezec/xilinx_linux/include/uapi/linux/elf-em.h \
  /home/diezec/xilinx_linux/include/linux/moduleparam.h \
    $(wildcard include/config/alpha.h) \
    $(wildcard include/config/ppc64.h) \
  /home/diezec/xilinx_linux/include/linux/extable.h \
  /home/diezec/xilinx_linux/include/linux/rbtree_latch.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/module.h \
    $(wildcard include/config/arm/unwind.h) \
    $(wildcard include/config/arm/module/plts.h) \
  /home/diezec/xilinx_linux/include/asm-generic/module.h \
    $(wildcard include/config/have/mod/arch/specific.h) \
    $(wildcard include/config/modules/use/elf/rel.h) \
    $(wildcard include/config/modules/use/elf/rela.h) \
  /home/diezec/xilinx_linux/include/linux/phy_fixed.h \
    $(wildcard include/config/fixed/phy.h) \
  /home/diezec/xilinx_linux/include/net/netprio_cgroup.h \
  /home/diezec/xilinx_linux/include/linux/cgroup.h \
    $(wildcard include/config/cgroup/data.h) \
  /home/diezec/xilinx_linux/include/uapi/linux/cgroupstats.h \
  /home/diezec/xilinx_linux/include/uapi/linux/taskstats.h \
  /home/diezec/xilinx_linux/include/linux/user_namespace.h \
    $(wildcard include/config/persistent/keyrings.h) \
  /home/diezec/xilinx_linux/include/uapi/linux/neighbour.h \
  /home/diezec/xilinx_linux/include/linux/netlink.h \
  /home/diezec/xilinx_linux/include/net/scm.h \
    $(wildcard include/config/security/network.h) \
  /home/diezec/xilinx_linux/include/linux/security.h \
    $(wildcard include/config/security/network/xfrm.h) \
    $(wildcard include/config/security/path.h) \
    $(wildcard include/config/securityfs.h) \
  /home/diezec/xilinx_linux/include/uapi/linux/netlink.h \
  /home/diezec/xilinx_linux/include/uapi/linux/netdevice.h \
  /home/diezec/xilinx_linux/include/linux/if_link.h \
  /home/diezec/xilinx_linux/include/uapi/linux/if_link.h \
    $(wildcard include/config/pending.h) \
  /home/diezec/xilinx_linux/include/uapi/linux/if_bonding.h \
  /home/diezec/xilinx_linux/include/uapi/linux/pkt_cls.h \
    $(wildcard include/config/net/cls/ind.h) \
  /home/diezec/xilinx_linux/include/uapi/linux/pkt_sched.h \
  /home/diezec/xilinx_linux/include/linux/hashtable.h \
  /home/diezec/xilinx_linux/include/linux/inet.h \
  /home/diezec/xilinx_linux/include/linux/igmp.h \
  /home/diezec/xilinx_linux/include/uapi/linux/igmp.h \
  /home/diezec/xilinx_linux/include/linux/inetdevice.h \
  /home/diezec/xilinx_linux/include/linux/ip.h \
  /home/diezec/xilinx_linux/include/uapi/linux/ip.h \
  /home/diezec/xilinx_linux/include/linux/rtnetlink.h \
    $(wildcard include/config/net/ingress.h) \
    $(wildcard include/config/net/egress.h) \
  /home/diezec/xilinx_linux/include/uapi/linux/rtnetlink.h \
  /home/diezec/xilinx_linux/include/uapi/linux/if_addr.h \
  /home/diezec/xilinx_linux/include/net/ip.h \
    $(wildcard include/config/inet.h) \
  /home/diezec/xilinx_linux/include/net/inet_sock.h \
  /home/diezec/xilinx_linux/include/linux/jhash.h \
  /home/diezec/xilinx_linux/include/linux/unaligned/packed_struct.h \
  /home/diezec/xilinx_linux/include/net/sock.h \
    $(wildcard include/config/net.h) \
  /home/diezec/xilinx_linux/include/linux/list_nulls.h \
  /home/diezec/xilinx_linux/include/linux/uaccess.h \
  /home/diezec/xilinx_linux/include/linux/page_counter.h \
  /home/diezec/xilinx_linux/include/linux/memcontrol.h \
    $(wildcard include/config/memcg/swap.h) \
  /home/diezec/xilinx_linux/include/linux/vmpressure.h \
  /home/diezec/xilinx_linux/include/linux/eventfd.h \
    $(wildcard include/config/eventfd.h) \
  /home/diezec/xilinx_linux/include/linux/writeback.h \
  /home/diezec/xilinx_linux/include/linux/flex_proportions.h \
  /home/diezec/xilinx_linux/include/linux/backing-dev-defs.h \
    $(wildcard include/config/debug/fs.h) \
  /home/diezec/xilinx_linux/include/linux/filter.h \
    $(wildcard include/config/bpf/jit.h) \
    $(wildcard include/config/have/ebpf/jit.h) \
  /home/diezec/xilinx_linux/include/net/sch_generic.h \
  /home/diezec/xilinx_linux/include/uapi/linux/pkt_cls.h \
  /home/diezec/xilinx_linux/include/net/gen_stats.h \
  /home/diezec/xilinx_linux/include/uapi/linux/gen_stats.h \
  /home/diezec/xilinx_linux/include/net/rtnetlink.h \
  /home/diezec/xilinx_linux/include/net/netlink.h \
  /home/diezec/xilinx_linux/arch/arm/include/asm/cacheflush.h \
    $(wildcard include/config/arm/errata/411920.h) \
    $(wildcard include/config/cpu/cache/vipt.h) \
    $(wildcard include/config/outer/cache.h) \
    $(wildcard include/config/frame/pointer.h) \
  /home/diezec/xilinx_linux/arch/arm/include/asm/glue-cache.h \
    $(wildcard include/config/cpu/cache/v4.h) \
    $(wildcard include/config/cpu/cache/v4wb.h) \
  /home/diezec/xilinx_linux/arch/arm/include/asm/cachetype.h \
    $(wildcard include/config/cpu/cache/vivt.h) \
  /home/diezec/xilinx_linux/arch/arm/include/asm/outercache.h \
    $(wildcard include/config/outer/cache/sync.h) \
  /home/diezec/xilinx_linux/include/uapi/linux/filter.h \
  /home/diezec/xilinx_linux/include/uapi/linux/bpf_common.h \
  /home/diezec/xilinx_linux/include/uapi/linux/bpf.h \
  /home/diezec/xilinx_linux/include/linux/rculist_nulls.h \
  /home/diezec/xilinx_linux/include/net/dst.h \
  /home/diezec/xilinx_linux/include/net/neighbour.h \
  /home/diezec/xilinx_linux/include/net/tcp_states.h \
  /home/diezec/xilinx_linux/include/uapi/linux/net_tstamp.h \
  /home/diezec/xilinx_linux/include/net/request_sock.h \
  /home/diezec/xilinx_linux/include/net/netns/hash.h \
  /home/diezec/xilinx_linux/include/net/l3mdev.h \
  /home/diezec/xilinx_linux/include/net/fib_rules.h \
  /home/diezec/xilinx_linux/include/uapi/linux/fib_rules.h \
  /home/diezec/xilinx_linux/include/net/route.h \
  /home/diezec/xilinx_linux/include/net/inetpeer.h \
  /home/diezec/xilinx_linux/include/net/ipv6.h \
  /home/diezec/xilinx_linux/include/linux/ipv6.h \
    $(wildcard include/config/ipv6/router/pref.h) \
    $(wildcard include/config/ipv6/route/info.h) \
    $(wildcard include/config/ipv6/optimistic/dad.h) \
    $(wildcard include/config/ipv6/mip6.h) \
    $(wildcard include/config/ipv6/subtrees.h) \
  /home/diezec/xilinx_linux/include/uapi/linux/ipv6.h \
  /home/diezec/xilinx_linux/include/linux/icmpv6.h \
  /home/diezec/xilinx_linux/include/uapi/linux/icmpv6.h \
  /home/diezec/xilinx_linux/include/linux/tcp.h \
    $(wildcard include/config/tcp/md5sig.h) \
  /home/diezec/xilinx_linux/include/linux/win_minmax.h \
  /home/diezec/xilinx_linux/include/net/inet_connection_sock.h \
  /home/diezec/xilinx_linux/include/net/inet_timewait_sock.h \
  /home/diezec/xilinx_linux/include/net/timewait_sock.h \
  /home/diezec/xilinx_linux/include/uapi/linux/tcp.h \
  /home/diezec/xilinx_linux/include/linux/udp.h \
  /home/diezec/xilinx_linux/include/uapi/linux/udp.h \
  /home/diezec/xilinx_linux/include/net/if_inet6.h \
  /home/diezec/xilinx_linux/include/net/ndisc.h \
  /home/diezec/xilinx_linux/include/linux/if_arp.h \
    $(wildcard include/config/firewire/net.h) \
  /home/diezec/xilinx_linux/include/uapi/linux/if_arp.h \
  /home/diezec/xilinx_linux/include/net/ip_fib.h \
  /home/diezec/xilinx_linux/include/uapi/linux/in_route.h \
  /home/diezec/xilinx_linux/include/uapi/linux/route.h \
  /home/diezec/xilinx_linux/include/net/protocol.h \
  /home/diezec/xilinx_linux/include/net/arp.h \
  /home/diezec/xilinx_linux/include/net/tcp.h \
    $(wildcard include/config/syn/cookies.h) \
  /home/diezec/xilinx_linux/include/linux/cryptohash.h \
  /home/diezec/xilinx_linux/include/net/inet_hashtables.h \
  /home/diezec/xilinx_linux/include/net/inet_ecn.h \
  /home/diezec/xilinx_linux/include/net/dsfield.h \
  /home/diezec/xilinx_linux/include/net/udp.h \
  /home/diezec/xilinx_linux/include/net/udplite.h \
  /home/diezec/xilinx_linux/include/net/ip6_checksum.h \
  /home/diezec/xilinx_linux/include/net/ping.h \
  /home/diezec/xilinx_linux/include/net/icmp.h \
  /home/diezec/xilinx_linux/include/linux/icmp.h \
  /home/diezec/xilinx_linux/include/uapi/linux/icmp.h \
  /home/diezec/xilinx_linux/include/net/raw.h \
  /home/diezec/xilinx_linux/include/net/inet_common.h \
  /home/diezec/xilinx_linux/include/net/ip_tunnels.h \
    $(wildcard include/config/dst/cache.h) \
    $(wildcard include/config/ipv6/sit/6rd.h) \
  /home/diezec/xilinx_linux/include/linux/if_tunnel.h \
  /home/diezec/xilinx_linux/include/uapi/linux/if_tunnel.h \
  /home/diezec/xilinx_linux/include/net/gro_cells.h \
  /home/diezec/xilinx_linux/include/net/netns/generic.h \
  /home/diezec/xilinx_linux/include/net/lwtunnel.h \
    $(wildcard include/config/lwtunnel.h) \
  /home/diezec/xilinx_linux/include/uapi/linux/lwtunnel.h \
  /home/diezec/xilinx_linux/include/net/dst_cache.h \
  /home/diezec/xilinx_linux/include/net/ip6_fib.h \
  /home/diezec/xilinx_linux/include/linux/ipv6_route.h \
  /home/diezec/xilinx_linux/include/uapi/linux/ipv6_route.h \
  /home/diezec/xilinx_linux/include/net/ip6_route.h \
  /home/diezec/xilinx_linux/include/net/addrconf.h \
  /home/diezec/xilinx_linux/include/net/xfrm.h \
    $(wildcard include/config/xfrm/sub/policy.h) \
    $(wildcard include/config/xfrm/migrate.h) \
  /home/diezec/xilinx_linux/include/uapi/linux/pfkeyv2.h \
  /home/diezec/xilinx_linux/include/uapi/linux/ipsec.h \
  /home/diezec/xilinx_linux/include/linux/audit.h \
    $(wildcard include/config/audit/compat/generic.h) \
  /home/diezec/xilinx_linux/include/linux/ptrace.h \
  /home/diezec/xilinx_linux/include/linux/pid_namespace.h \
    $(wildcard include/config/pid/ns.h) \
  /home/diezec/xilinx_linux/include/uapi/linux/ptrace.h \
  /home/diezec/xilinx_linux/include/uapi/linux/audit.h \
    $(wildcard include/config/change.h) \
  /home/diezec/xilinx_linux/include/net/secure_seq.h \

net/ipv4/af_inet.o: $(deps_net/ipv4/af_inet.o)

$(deps_net/ipv4/af_inet.o):
