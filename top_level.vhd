library ieee;
use ieee.std_logic_1164.all;
use work.Common_Ports.all;

entity Top_Level is
	generic (
    N: positive := 8  -- Number of output channels
  );
  port (
    -- genereal ports
    i_1bit: in std_logic;
    o_Nbit: out std_logic_vector(N-1 downto 0);
    clk: in std_logic;
    o_status: out std_logic;
    --UART ports
	 i_TX_DV: in std_logic;
    i_TX_Byte   : in  std_logic_vector(7 downto 0);
    o_TX_Active : out std_logic;
    o_TX_Serial : out std_logic;
    o_TX_Done   : out std_logic;
	 --SPI Slave ports
	 i_SPI_clk: in std_logic
  );
end Top_Level;

architecture behav of Top_Level is
begin
   Instantiate Data_Sniffing
  Data_Sniffing_instance : entity work.Data_Sniffing
    port map (
      in_sniff_1bit_channel => i_1bit,
      out_sniff_Nbit_channel => data_sniffing_out_buffer,
      clk => clk,
      sniff_status => o_status
    );
	 
	 --Instantiate UART RX
	 UART_Receiver_Instance: entity work.UART_Receiver
	 port map(
	 i_Clk => clk,
	 i_RX_Serial => i_1bit,
	 o_RX_DV => o_status,
	 o_RX_Byte => data_sniffing_out_buffer
	 );
    --Instantiate UART TX
    UART_Transmitter_Instance: entity work.UART_TX
    port map(
      i_Clk => clk,
      i_TX_DV => i_TX_DV,
      --i_TX_Byte => i_TX_Byte,
      o_TX_Active => o_TX_Active,
      o_TX_Serial => o_TX_Serial,
      o_TX_Done => o_TX_Done
    );
	 
	  --Instantiate SPI Slave
    SPI_Slave_Instance: entity work.SPI_Slave
    port map(
		i_MOSI => i_1bit,
		o_DV => o_status,
		o_Rec_Data => data_sniffing_out_buffer,
		i_SCK => i_SPI_clk
    );

  -- Instantiate Communication_Protocol
  Communication_Module_instance : entity work.Communication_Module
    port map (
      -- Connect to the common ports
      in_comm_channel => data_sniffing_out_buffer,
      out_comm_channel => o_Nbit
    );

  
  -- Connect the status signal from Data_Sniffing to an external signal
 -- o_status <= data_sniffing_status_internal;
end behav;
