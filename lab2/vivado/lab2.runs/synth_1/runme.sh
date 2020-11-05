#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/cad/x_18/SDK/2018.1/bin:/cad/x_18/Vivado/2018.1/ids_lite/ISE/bin/lin64:/cad/x_18/Vivado/2018.1/bin
else
  PATH=/cad/x_18/SDK/2018.1/bin:/cad/x_18/Vivado/2018.1/ids_lite/ISE/bin/lin64:/cad/x_18/Vivado/2018.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/cad/x_18/Vivado/2018.1/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/cad/x_18/Vivado/2018.1/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/diezec/workspace/lab2/vivado/lab2.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log Lab2_SoC_wrapper.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source Lab2_SoC_wrapper.tcl
