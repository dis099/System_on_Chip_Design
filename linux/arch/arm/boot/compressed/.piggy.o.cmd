cmd_arch/arm/boot/compressed/piggy.o := arm-linux-gnueabihf-gcc -Wp,-MD,arch/arm/boot/compressed/.piggy.o.d  -nostdinc -isystem /cad/x_18/SDK/2018.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin/../lib/gcc/arm-linux-gnueabihf/7.2.1/include -I/home/diezec/xilinx_linux/arch/arm/include -I./arch/arm/include/generated/uapi -I./arch/arm/include/generated  -I/home/diezec/xilinx_linux/include -I./include -I/home/diezec/xilinx_linux/arch/arm/include/uapi -I/home/diezec/xilinx_linux/include/uapi -I./include/generated/uapi -include /home/diezec/xilinx_linux/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -D__ASSEMBLY__ -fno-PIE -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -funwind-tables -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a -include asm/unified.h -msoft-float -DCC_HAVE_ASM_GOTO -DZIMAGE   -c -o arch/arm/boot/compressed/piggy.o /home/diezec/xilinx_linux/arch/arm/boot/compressed/piggy.S

source_arch/arm/boot/compressed/piggy.o := /home/diezec/xilinx_linux/arch/arm/boot/compressed/piggy.S

deps_arch/arm/boot/compressed/piggy.o := \
  /home/diezec/xilinx_linux/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
    $(wildcard include/config/cpu/v7m.h) \
    $(wildcard include/config/thumb2/kernel.h) \

arch/arm/boot/compressed/piggy.o: $(deps_arch/arm/boot/compressed/piggy.o)

$(deps_arch/arm/boot/compressed/piggy.o):
