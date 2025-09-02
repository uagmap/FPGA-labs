library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity vga_640x480 is
	port( 
			clk, rst : in std_logic;
			hsync		: out std_logic; --sync pulse
			vsync		: out std_logic;
			hc			: out std_logic_vector(9 downto 0); --horizontal counter
			vc			: out std_logic_vector(9 downto 0); --vertical counter
			videon	: out std_logic);--high when the pixel scanning is within the display area			
end vga_640x480;

architecture behavioral of vga_640x480 is 
	constant hpixels : std_logic_vector(9 downto 0) := "1100100000"; -- 800 = pixels in a horizontal line
	constant vlines : std_logic_vector(9 downto 0) := "1000001001"; -- 521 = number of horizontal lines
	constant hbp : std_logic_vector(9 downto 0) := "0010010000"; -- 144(128+16) = end of hor. back porch
	constant hfp : std_logic_vector(9 downto 0) := "1100010000"; -- 784(128+16+640) = start of hor. front porch
	constant vbp : std_logic_vector(9 downto 0) := "0000011111"; -- 31(2+29) = end of vert. back porch
	constant vfp : std_logic_vector(9 downto 0) := "0111111111"; -- 511(2+29+480) = start of vert. front porch
	signal hcs, vcs : std_logic_vector(9 downto 0); -- horizontal and vertical counters
	signal vsenable : std_logic; -- enable for the vertical counter
begin
	PROCESS(clk, rst)
	begin
		IF (rst = '0') THEN
				hcs <= "0000000000";
      ELSIF (clk'EVENT AND clk = '1') THEN
			if(hcs = hpixels) then
				hcs <= "0000000000"; -- reset horizontal counter
				vsenable <= '1'; -- turn on vertical counter
			else
				hcs <= hcs+1; -- increment horizontal counter
				vsenable <= '0'; -- turn off vsenable
			end if;
		end if;  
	end process;
	
	hsync <= '0' when hcs < 96 else '1'; -- horizontal sync pulse

	process(clk, rst, vsenable) -- counter for vertical sync signal
		begin
			if(rst='0') then
				vcs <= "0000000000";
			elsif(clk'event and clk='1' and vsenable='1') then
				if(vcs=vlines) then -- check if counted full range
					vcs <= "0000000000";
				else
					vcs <= vcs+1; -- increment vertical counter
				end if;
			end if;
		end process;

		vsync <= '0' when vcs < 2 else '1';
		
		-- enable video output within the porches
		videon <= '1' when (((hcs < hfp) and (hcs >= hbp))
							and ((vcs < vfp) and (vcs >= vbp ))) else '0';
		
		-- output horizontal and vertical counter
		hc <= hcs;
		vc <= vcs;
end behavioral;