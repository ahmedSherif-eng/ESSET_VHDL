library ieee;
use ieee.std_logic_1164.all;

entity Communication_SPI is
	port(
--	i_Data: in std_logic_vector (7 downto 0); 
	i_MOSI: in std_logic; --Master Output Slave Input
	--o_DV: out std_logic;  --Data Valid
	--o_Rec_Data: out std_logic_vector(7 downto 0); --Received Data as 8 bits
	o_MISO: out std_logic;
	i_SCK: in std_logic
	);
end Communication_SPI;

architecture behav of Communication_SPI is 
signal r_send: boolean :=true;
signal r_Bit_Index: integer range 0 to 7 := 7;  -- 8 Bits Total
signal r_Data: std_logic_vector(7 downto 0):=X"22";
begin
Sending_Process:process(i_SCK)
begin
if falling_edge(i_SCK) then
	if r_send = true then
		o_MISO <= r_Data(r_Bit_Index);
		if r_Bit_Index > 0 then
			r_Bit_Index <= r_Bit_Index - 1;
		else
		r_Bit_Index <= 7;
	--	r_send<=false;
		end if;
	end if;
end if;
end process;
--NewDataProcess: process(i_SCK)
--begin
--if rising_edge(i_SCK) then
--	if r_Data /= i_Data then
--		r_Data<=i_Data;
--		r_send<=true;
--	end if;
--end if;
--end process;
end behav;