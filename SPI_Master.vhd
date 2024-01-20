library ieee;
use ieee.std_logic_1164.all;

entity SPI_Master is 
	generic(
		g_CLKS_PER_BIT: integer := 6 -- 50MHZ system clock and assume 8MHZ SPI clock 
	);
	port(
		o_MOSI: out std_logic;
		o_sck: out std_logic;
		i_clk: in std_logic;
		i_TX_Byte: in std_logic_vector (7 downto 0)
	);
end SPI_Master;

Architecture behav of SPI_Master is
signal r_clks_count: integer:=0;
signal r_sck: std_logic:='1';
begin
p_CLK_GEN: process(i_clk)
		begin 
		if rising_edge(i_clk) then
			 r_clks_count<=r_clks_count+1;
			 if r_clks_count=g_CLKS_PER_BIT/2 then
				r_sck <= not r_sck;
				r_clks_count<=0;
			 end if;
		end if;
	end process p_CLK_GEN;
 o_sck<=r_sck;
end behav;