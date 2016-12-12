# FPGA_random_forest
FPGA implementation of SKLearn Random Forest

Implements a random forest algorithm on an FPGA using SKLearn in python. The SKHDL_64 package takes an SKLearn random forest object, and generates a verilog file representing the trees of the forest. The file can then be added a Xilinx project with the other included files to create a synthesizable module.

Once the module has been synthesized, using the skhdl_64.predict() method sends a pandas dataframe to the FPGA, and returns predictions matching those of SKLearn.

Note: you may need to change the com port in skhdl to match the serial usb port of your machine.

The module includes an already generated file using compustat data from Dirk Zorn's 2004 paper.

## Remaining issues as of Dec 12
Currently the data_collect.v file also needs to be modified when new forest is generated. The NUM_DATA parameter needs to match between these two files. The data_collect.py file generates this file, but needs to be added in to the larger skhdl file.

Occasionally the module gives an incorrect prediction. We believe this is due to the address counter we use to store incoming data going to an incorrect position. We have not been able to replicate the problem in simulation, and are experimenting with different ways to fix this.
