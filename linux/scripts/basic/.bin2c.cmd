cmd_scripts/basic/bin2c := gcc -Wp,-MD,scripts/basic/.bin2c.d -Iscripts/basic -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89 -o scripts/basic/bin2c /home/diezec/xilinx_linux/scripts/basic/bin2c.c  

source_scripts/basic/bin2c := /home/diezec/xilinx_linux/scripts/basic/bin2c.c

deps_scripts/basic/bin2c := \
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

scripts/basic/bin2c: $(deps_scripts/basic/bin2c)

$(deps_scripts/basic/bin2c):
