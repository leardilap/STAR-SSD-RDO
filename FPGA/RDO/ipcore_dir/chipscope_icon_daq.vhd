-------------------------------------------------------------------------------
-- Copyright (c) 2014 Xilinx, Inc.
-- All Rights Reserved
-------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor     : Xilinx
-- \   \   \/     Version    : 14.5
--  \   \         Application: XILINX CORE Generator
--  /   /         Filename   : chipscope_icon_daq.vhd
-- /___/   /\     Timestamp  : Wed May 14 10:50:40 Pacific Daylight Time 2014
-- \   \  /  \
--  \___\/\___\
--
-- Design Name: VHDL Synthesis Wrapper
-------------------------------------------------------------------------------
-- This wrapper is used to integrate with Project Navigator and PlanAhead

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY chipscope_icon_daq IS
  port (
    CONTROL0: inout std_logic_vector(35 downto 0));
END chipscope_icon_daq;

ARCHITECTURE chipscope_icon_daq_a OF chipscope_icon_daq IS
BEGIN

END chipscope_icon_daq_a;
