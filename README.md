# ASIC Projects

This is a collection of homework assignments, labs, and a final project for ASIC design and testing of VLSI circuit (GWU ECE 4525)

### What is Here?

The first few labs and homeworks are fairly trivial Verilog scripts and tests for simple pieces of hardware such as full adders.

The real interesting stuff lyes in lab 5 and beyond where a TinyMIPS ALU has be coded, tested, and synthesized using Cadence Encounter, Simvision, and Tetramax. The final project consists of a TinyMIPS (aka TimyMIPS) ALU. The modules can be found in`project/hw_files/src/mips.v`.  The ALU supports the following 8-bit operations:

  * Addition	(add)
  * Subtraction	(sub)
  * Logical AND	(and)
  * Logical OR	(or)
  * Set on less than (slt)
  * Load/Store Byte  (lb/sb)
  * Branch if Equals (beq)

A memory simulation can be found in `mem_sim.v` in the same directory.  These modules are combined in the top-level module `full_mips.v`.  Simples tests were run from `mips_tb.v` while the Fibonocci sequence was tested in Simvision using `fib.dat`. 

All syn and scan files are synthesized modules or one's with scanning tests autogenerated.  These used the standard components in `osu05_stdcells.v` and `osu_scan.v`