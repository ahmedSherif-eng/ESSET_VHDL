library ieee;
use ieee.std_logic_1164.all;
entity ConditionalByPass is
    port(
    i_DV: in std_logic;
    o_output: out std_logic_vector(7 downto 0);
    o_DV: out  std_logic :='0';
	o_status: out std_logic := '0';
    i_input: in std_logic_vector(7 downto 0)
    );
end ConditionalByPass;

architecture behav of ConditionalByPass is
signal r_input: std_logic_vector(7 downto 0);
signal r_output: std_logic_vector(7 downto 0);
signal r_condition: std_logic_vector(7 downto 0) :=(others =>'0'); 
signal r_status: std_logic := '0';
begin
process(i_DV) begin
    if rising_edge(i_DV) then
        if r_status = '0' then
            if r_input = r_condition then
                r_output <= (others => 'U');
                r_status <= '1';
                o_DV <='1';
            else 
                r_output <= r_input;
                o_DV <='1';
            end if;
        else
            r_output <= (others => 'U');
            o_DV <='1';
        end if;
    end if;
end process;
o_status <= r_status;
o_output <= r_output;
r_input <= i_input;
end behav;