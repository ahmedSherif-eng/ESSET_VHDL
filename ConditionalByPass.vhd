library ieee;
use ieee.std_logic_1164.all;
entity ConditionalByPass is
    port(
    clk: in std_logic;
    i_DV: in std_logic;
    o_output: out std_logic_vector(7 downto 0);
    o_DV: out  std_logic :='0';
	o_status: out std_logic ;
    i_input: in std_logic_vector(7 downto 0)
    );
end ConditionalByPass;

architecture behav of ConditionalByPass is
signal r_input: std_logic_vector(7 downto 0);
signal r_ooutput: std_logic_vector(7 downto 0);
signal r_condition: std_logic_vector(7 downto 0) :=(others =>'0'); 
signal r_status: std_logic := '0';
begin
process(clk) begin
    if rising_edge(i_DV) then
       -- if r_status = '0' then
            if r_input = r_condition then
                r_ooutput <= X"FF";
                r_status <= '1';
                o_DV <='1';
            else 
                r_ooutput <= X"33";
                o_DV <='1';
            end if;

        --  else
        --     r_output <= (others => 'U');
        --     o_DV <='1';
     --   end if;
    -- else if falling_edge(i_DV) then
    --     o_DV <= '0';
    end if;
end process;
o_status <= r_status;
o_output <= r_ooutput;
r_input <= i_input;
end behav;