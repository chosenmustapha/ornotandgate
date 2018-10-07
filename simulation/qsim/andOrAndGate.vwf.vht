-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/03/2018 00:01:24"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          andOrAndGate
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY andOrAndGate_vhd_vec_tst IS
END andOrAndGate_vhd_vec_tst;
ARCHITECTURE andOrAndGate_arch OF andOrAndGate_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL in1 : STD_LOGIC;
SIGNAL in2 : STD_LOGIC;
SIGNAL in3 : STD_LOGIC;
SIGNAL X : STD_LOGIC;
COMPONENT andOrAndGate
	PORT (
	in1 : IN STD_LOGIC;
	in2 : IN STD_LOGIC;
	in3 : IN STD_LOGIC;
	X : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : andOrAndGate
	PORT MAP (
-- list connections between master ports and signals
	in1 => in1,
	in2 => in2,
	in3 => in3,
	X => X
	);

-- in1
t_prcs_in1: PROCESS
BEGIN
LOOP
	in1 <= '0';
	WAIT FOR 1000000 ps;
	in1 <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 20000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_in1;

-- in2
t_prcs_in2: PROCESS
BEGIN
LOOP
	in2 <= '0';
	WAIT FOR 2000000 ps;
	in2 <= '1';
	WAIT FOR 2000000 ps;
	IF (NOW >= 20000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_in2;

-- in3
t_prcs_in3: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		in3 <= '0';
		WAIT FOR 4000000 ps;
		in3 <= '1';
		WAIT FOR 4000000 ps;
	END LOOP;
	in3 <= '0';
WAIT;
END PROCESS t_prcs_in3;
END andOrAndGate_arch;
