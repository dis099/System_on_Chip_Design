cmd_arch/arm/kernel/built-in.o :=  arm-linux-gnueabihf-ld -EL    -r -o arch/arm/kernel/built-in.o arch/arm/kernel/elf.o arch/arm/kernel/entry-common.o arch/arm/kernel/irq.o arch/arm/kernel/opcodes.o arch/arm/kernel/process.o arch/arm/kernel/ptrace.o arch/arm/kernel/reboot.o arch/arm/kernel/return_address.o arch/arm/kernel/setup.o arch/arm/kernel/signal.o arch/arm/kernel/sigreturn_codes.o arch/arm/kernel/stacktrace.o arch/arm/kernel/sys_arm.o arch/arm/kernel/time.o arch/arm/kernel/traps.o arch/arm/kernel/atags_parse.o arch/arm/kernel/entry-armv.o arch/arm/kernel/cpuidle.o arch/arm/kernel/armksyms.o arch/arm/kernel/module.o arch/arm/kernel/bios32.o arch/arm/kernel/isa.o arch/arm/kernel/sleep.o arch/arm/kernel/suspend.o arch/arm/kernel/smp.o arch/arm/kernel/smp_tlb.o arch/arm/kernel/smp_scu.o arch/arm/kernel/smp_twd.o arch/arm/kernel/unwind.o arch/arm/kernel/devtree.o arch/arm/kernel/swp_emulate.o arch/arm/kernel/hw_breakpoint.o arch/arm/kernel/perf_regs.o arch/arm/kernel/perf_callchain.o arch/arm/kernel/perf_event_xscale.o arch/arm/kernel/perf_event_v6.o arch/arm/kernel/perf_event_v7.o arch/arm/kernel/topology.o arch/arm/kernel/io.o arch/arm/kernel/hyp-stub.o arch/arm/kernel/smccc-call.o 
