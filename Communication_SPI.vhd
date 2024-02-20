library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;


entity Communication_SPI is
	port(
	i_Data: in std_logic_vector (7 downto 0); 
--	i_MOSI: in std_logic; --Master Output Slave Input
	o_DV: out std_logic;  --Data Valid
	i_Sniff_DV: in std_logic;
	--o_Rec_Data: out std_logic_vector(7 downto 0); --Received Data as 8 bits
	o_MISO: out std_logic;
	i_SCK: in std_logic
	);
end Communication_SPI;

architecture behav of Communication_SPI is 
signal r_send: boolean :=false;
signal r_DataValid: std_logic := '0';
signal r_Bit_Index: integer range 0 to 7 := 7;  -- 8 Bits Total
signal r_Data: std_logic_vector(7 downto 0):=X"00";
begin
Sending_Process:process(i_SCK,i_Sniff_DV)
begin
if i_Sniff_DV = '1' then
	r_DataValid <= '1';
end if;
	if rising_edge(i_SCK) then
		o_MISO <= i_Data(r_Bit_Index);
		if r_Bit_Index > 0 then
			r_Bit_Index <= r_Bit_Index - 1;
		else
		r_Bit_Index <= 7;
	--	r_DataValid <= '0';
		r_send <= false;
		end if;
	end if;
	if r_Bit_Index = 0 then
		r_DataValid <= '0';
		end if;
end process;
o_DV <= r_DataValid;
end behav;