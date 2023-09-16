library ieee;
use ieee.std_logic_1164.all;
-- use work.Common_Ports.all;

entity Data_Sniffing is
  port (
    in_sniff_1bit_channel: in std_logic;
    out_sniff_8bit_channel: out std_logic_vector(7 downto 0);
    clk: in std_logic;
    sniff_status: out std_logic
  );
end Data_Sniffing;

architecture behav of Data_Sniffing is
  signal out_buffer: std_logic_vector(7 downto 0) := "00000000";
begin
  process(clk)
    variable counter: natural := 0;
  begin
    if rising_edge(clk) then
      out_buffer <= out_buffer(6 downto 0) & in_sniff_1bit_channel;
      counter := counter + 1;
      if counter = 9 then
        sniff_status <= '1';
        out_sniff_8bit_channel <= out_buffer;
        out_buffer <= "00000000";
        counter := 0;
      else
        sniff_status <= '0';
      end if;
    end if;
  end process;
end behav;
