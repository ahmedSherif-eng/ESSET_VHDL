library ieee;
use ieee.std_logic_1164.all;
use work.Common_Ports.all;

entity Top_Level is
  port (
    -- Connect to the common ports
    in_toplvl_1bit_channel: in std_logic;
    out_toplvl_8bit_channel: out std_logic_vector(7 downto 0);
    clk: in std_logic;
    toplvl_status: out std_logic
  );
end Top_Level;

architecture behav of Top_Level is
begin
  -- Instantiate Data_Sniffing
  Data_Sniffing_instance : entity work.Data_Sniffing
    port map (
      in_sniff_1bit_channel => in_toplvl_1bit_channel,
      out_sniff_8bit_channel => data_sniffing_out_buffer,
      clk => clk,
      sniff_status => toplvl_status
    );
  
  -- Instantiate Communication_Protocol
  Communication_Module_instance : entity work.Communication_Module
    port map (
      -- Connect to the common ports
      in_comm_channel => data_sniffing_out_buffer,
      out_comm_channel => out_toplvl_8bit_channel
    );
  
  -- Connect the status signal from Data_Sniffing to an external signal
  toplvl_status <= data_sniffing_status_internal;
end behav;
