library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity vga_sprite_rom is
	generic(		W : natural := 120; --size of sprite
					H : natural := 80);
					
	port( 	hc : in std_logic_vector(9 downto 0);
				vc : in std_logic_vector(9 downto 0);
				videon: in std_logic;
				sw : in std_logic_vector(7 downto 0);
				red : out std_logic_vector(3 downto 0);
				green : out std_logic_vector(3 downto 0);
				blue : out std_logic_vector(3 downto 0));
end vga_sprite_rom;

architecture behavioral of vga_sprite_rom is

	constant hbp : std_logic_vector(9 downto 0) := "0010010000"; -- horizontal back porch
	constant vbp : std_logic_vector(9 downto 0) := "0000011111"; -- vertical back porch
	signal C1, R1 : std_logic_vector(9 downto 0); -- left upper corner of sprite
	signal x_pix, y_pix : std_logic_vector(9 downto 0);
	signal spriteon : std_logic;
	signal rom_data : std_logic_vector(7 downto 0); -- ROM data bus --8 color bits per pixel?
	signal rom_ptr : natural := 0;
	
	type memory is array (0 to w*h-1) of std_logic_vector(7 downto 0); --total count of colored 8bit pixels
	signal rom : memory;
	-- initialize rom with .mif file (see Module 3 for how to do this)
	attribute ram_init_file : STRING;
	attribute ram_init_file OF rom: SIGNAL IS ".\loons.mif";
	attribute romstyle : STRING;
	attribute romstyle OF rom: SIGNAL IS "M4K";
begin
	C1 <= '0' & sw(3 downto 0) & "00001";
	R1 <= '0' & sw(7 downto 4) & "00001";
	y_pix <= vc - vbp - R1; -- sprite relative y coordinate
	x_pix <= hc - hbp - C1; -- sprite relative x coordinate
	
	spriteon <= '1' when (((hc >= C1 + hbp) and (hc < C1 + hbp + W))
						 and ((vc >= R1 + vbp) and (vc < R1 + vbp + H)))
						 else '0';
						 
	rom_ptr <= conv_integer(y_pix)*W + conv_integer(x_pix);
	rom_data <= rom(rom_ptr);
	
	process(spriteon, videon, rom_data)
	begin
		red <= "0000";
		green <= "0000";
		blue <= "0000";
		if spriteon='1' and videon = '1' then -- decodes color stored in ROM
			red <= rom_data(7 downto 5) & '0';
			green <= rom_data(4 downto 2) & '0';
			blue <= rom_data(1 downto 0) & "00";
		end if;
	end process;
end behavioral;