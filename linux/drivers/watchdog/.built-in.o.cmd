cmd_drivers/watchdog/built-in.o :=  arm-linux-gnueabihf-ld -EL    -r -o drivers/watchdog/built-in.o drivers/watchdog/watchdog.o drivers/watchdog/cadence_wdt.o drivers/watchdog/of_xilinx_wdt.o 
