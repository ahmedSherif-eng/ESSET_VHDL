library ieee;
use ieee.std_logic_1164.all;
use work.Common_Ports.all;

entity Top_Level is
	generic (
    N: positive := 8  -- Number of output channels
  );
  port (
    -- Connect to the common ports
    in_toplvl_1bit_channel: in std_logic;
    out_toplvl_Nbit_channel: out std_logic_vector(N-1 downto 0);
    clk: in std_logic;
    toplvl_status: out std_logic;
    in_TX_DV: in std_logic;
    in_TX_Byte   : in  std_logic_vector(7 downto 0);
    out_TX_Active : out std_logic;
    out_TX_Serial : out std_logic;
    out_TX_Done   : out std_logic
  );
end Top_Level;

architecture behav of Top_Level is
begin
  -- Instantiate Data_Sniffing
 -- Data_Sniffing_instance : entity work.Data_Sniffing
   -- port map (
     -- in_sniff_1bit_channel => in_toplvl_1bit_channel,
     -- out_sniff_Nbit_channel => data_sniffing_out_buffer,
     -- clk => clk,
     -- sniff_status => toplvl_status
    --);
	 
	 -- UART instance
	 UART_Receiver_Instance: entity work.UART_Receiver
	 port map(
	 i_Clk => clk,
	 i_RX_Serial => in_toplvl_1bit_channel,
	 o_RX_DV => toplvl_status,
	 o_RX_Byte => data_sniffing_out_buffer
	 );
    --Instantiate UART TX
    UART_Transmitter_Instance: entity work.UART_TX
    port map(
      i_Clk => clk,
      i_TX_DV => in_TX_DV,
      i_TX_Byte => in_TX_Byte,
      o_TX_Active => out_TX_Active,
      o_TX_Serial => out_TX_Serial,
      o_TX_Done => out_TX_Done
    );

  -- Instantiate Communication_Protocol
  Communication_Module_instance : entity work.Communication_Module
    port map (
      -- Connect to the common ports
      in_comm_channel => data_sniffing_out_buffer,
      out_comm_channel => out_toplvl_Nbit_channel
    );

  
  -- Connect the status signal from Data_Sniffing to an external signal
 -- toplvl_status <= data_sniffing_status_internal;
end behav;
