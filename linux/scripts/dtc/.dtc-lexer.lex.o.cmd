cmd_scripts/dtc/dtc-lexer.lex.o := gcc -Wp,-MD,scripts/dtc/.dtc-lexer.lex.o.d -Iscripts/dtc -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89  -I/home/diezec/xilinx_linux/scripts/dtc  -I/home/diezec/xilinx_linux/scripts/dtc/libfdt -c -o scripts/dtc/dtc-lexer.lex.o scripts/dtc/dtc-lexer.lex.c

source_scripts/dtc/dtc-lexer.lex.o := scripts/dtc/dtc-lexer.lex.c

deps_scripts/dtc/dtc-lexer.lex.o := \
  /usr/include/stdc-predef.h \
  /usr/include/stdio.h \
  /usr/include/features.h \
  /usr/include/sys/cdefs.h \
  /usr/include/bits/wordsize.h \
  /usr/include/gnu/stubs.h \
  /usr/include/gnu/stubs-64.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.8/include/stddef.h \
  /usr/include/bits/types.h \
  /usr/include/bits/typesizes.h \
  /usr/include/libio.h \
  /usr/include/_G_config.h \
  /usr/include/wchar.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.8/include/stdarg.h \
  /usr/include/bits/stdio_lim.h \
  /usr/include/bits/sys_errlist.h \
  /usr/include/bits/stdio.h \
  /usr/include/string.h \
  /usr/include/xlocale.h \
  /usr/include/bits/string.h \
  /usr/include/bits/string2.h \
  /usr/include/endian.h \
  /usr/include/bits/endian.h \
  /usr/include/bits/byteswap.h \
  /usr/include/bits/byteswap-16.h \
  /usr/include/stdlib.h \
  /usr/include/errno.h \
  /usr/include/bits/errno.h \
  /usr/include/linux/errno.h \
  /usr/include/asm/errno.h \
  /usr/include/asm-generic/errno.h \
  /usr/include/asm-generic/errno-base.h \
  /usr/include/bits/waitflags.h \
  /usr/include/bits/waitstatus.h \
  /usr/include/sys/types.h \
  /usr/include/time.h \
  /usr/include/sys/select.h \
  /usr/include/bits/select.h \
  /usr/include/bits/sigset.h \
  /usr/include/bits/time.h \
  /usr/include/sys/sysmacros.h \
  /usr/include/bits/pthreadtypes.h \
  /usr/include/alloca.h \
  /usr/include/bits/stdlib-bsearch.h \
  /usr/include/bits/stdlib-float.h \
  /home/diezec/xilinx_linux/scripts/dtc/dtc.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.8/include/stdint.h \
  /usr/include/stdint.h \
  /usr/include/bits/wchar.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.8/include/stdbool.h \
  /usr/include/assert.h \
  /usr/include/ctype.h \
  /usr/include/unistd.h \
  /usr/include/bits/posix_opt.h \
  /usr/include/bits/environments.h \
  /usr/include/bits/confname.h \
  /usr/include/getopt.h \
  /home/diezec/xilinx_linux/scripts/dtc/libfdt/libfdt_env.h \
  /home/diezec/xilinx_linux/scripts/dtc/libfdt/fdt.h \
  /home/diezec/xilinx_linux/scripts/dtc/util.h \
  /home/diezec/xilinx_linux/scripts/dtc/srcpos.h \
  scripts/dtc/dtc-parser.tab.h \

scripts/dtc/dtc-lexer.lex.o: $(deps_scripts/dtc/dtc-lexer.lex.o)

$(deps_scripts/dtc/dtc-lexer.lex.o):
