entity spi_dac is
	port( clk, rst, start		:	in bit;
			mosi, cs, sck, eoc	: 	out bit;
			data						: 	in bit_vector(7 downto 0);
			channel					:	in bit);
end spi_dac;

architecture sequential of spi_dac is
	signal busy			:	bit;
	signal data_reg	:	bit_vector (15 downto 0);
	begin
		process(clk, rst)
			variable bit_count	:	integer range 0 to 15;
		begin
			if rst='0' then
				cs<='1';
				mosi<='0';
				eoc<='0';
				busy<='0';
				bit_count := 0;
			elsif(clk'event and clk='1') then --on rising edge
				if(start='1' and busy='0') then	--start if not started
					busy <= '1'; --flag as busy
					data_reg <= "00100" & channel & "00" & data;
					cs <= '0';
					bit_count := 0; --counter is zero on start
					eoc <= '0';
				end if;
				
				if(busy='1') then --working
					data_reg <= data_reg(14 downto 0) & '0';	--left shift into a register
					if(bit_count=15) then --check if enough bits have been shifted
						--means conversion is done after 8 data bits are shifted
						eoc <= '1';
						cs <= '1';
						busy <= '0';
					end if;
					bit_count := bit_count + 1;
				end if;
			end if;
				mosi <= data_reg(15);
				--transfer data register to mosi
		end process;
		sck <= not clk;
	end sequential;
				