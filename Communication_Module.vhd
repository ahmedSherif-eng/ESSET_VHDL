library ieee;
use ieee.std_logic_1164.all;
-- use work.Common_Ports.all;

entity Communication_Module is
	generic (
		N: positive := 8 -- Number of input and output channels
	);
	port (
		in_comm_channel: in std_logic_vector(N-1 downto 0);
		out_comm_channel: out std_logic_vector(N-1 downto 0)
	);
end Communication_Module;

architecture behav of Communication_Module is
begin
  out_comm_channel <=  in_comm_channel;
end behav;
