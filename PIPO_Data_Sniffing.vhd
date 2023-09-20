library ieee;
use ieee.std_logic_1164.all;
-- use work.Common_Ports.all;

entity PIPO_Data_Sniffing is
  generic (
    N: positive := 8  -- Number of input and output channels
  );
  port (
    in_sniff_Nbit_channel: in std_logic_vector(N-1 downto 0);
    out_sniff_Nbit_channel: out std_logic_vector(N-1 downto 0);
    clk: in std_logic;
    sniff_status: out std_logic
  );
end PIPO_Data_Sniffing;

architecture behav of PIPO_Data_Sniffing is
begin
  process(clk)
  begin
    if rising_edge(clk) then
      out_sniff_Nbit_channel <= in_sniff_Nbit_channel;
		sniff_status <= '1'; 
	end if;
  end process;
end behav;
