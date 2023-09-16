library ieee;
use ieee.std_logic_1164.all;

package Common_Ports is
  -- Common ports shared between Data_Sniffing and Communication_Protocol
  signal data_sniffing_out_buffer: std_logic_vector(7 downto 0);
  signal data_sniffing_status_internal: std_logic;
end Common_Ports;

package body Common_Ports is
  -- Initialize signals if needed
  -- For example: in_data_common <= (others => '0');
end Common_Ports;
