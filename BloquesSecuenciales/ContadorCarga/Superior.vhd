library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Superior is
    Port ( clk : in  STD_LOGIC;
           clear : in  STD_LOGIC;
           Load : in  STD_LOGIC;
           DatoIn : in  STD_LOGIC_VECTOR (7 downto 0);
			  DatoOut : out  STD_LOGIC_VECTOR (7 downto 0));
end Superior;

architecture Behavioral of Superior is

component divide is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Foutdivide : out  STD_LOGIC);
end component;

component Anillo is
    Port ( clk : in  STD_LOGIC;
           clear : in  STD_LOGIC;
			  Load : in  STD_LOGIC;
           DatoIn : in STD_LOGIC_VECTOR (7 downto 0);
			  DatoOut : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

signal sg1:std_logic;

begin

u0:divide Port map(clk=>clk,reset=>clear,Foutdivide=>sg1);
u1:Anillo Port map(clk=>sg1,clear=>clear,Load=>load,DatoIn=>DatoIn,DatoOut=>DatoOut);
end Behavioral;

