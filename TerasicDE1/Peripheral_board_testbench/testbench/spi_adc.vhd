entity spi_adc is
	port( clk, rst				: in bit;
			start, miso			: in bit;
			channel_select		: in bit;
			cs, sck, eoc		: out bit;
			chsel					: out bit;
			data					: out bit_vector(9 downto 0)); --12 bit converted result
end spi_adc;

architecture convertible of spi_adc is
	signal busy : bit;
	signal data_reg : bit_vector(15 downto 0);
	
begin
	process(clk, rst)
		variable bit_count : integer range 0 to 15;
	begin
		if(rst='0') then								--reset (bring all back to inactive state)
			bit_count := 0;
			busy <= '0';
			cs <= '1';	--1 is deactivated
			eoc <= '0';
			data_reg <= (others => '0');
			
		elsif(clk'event and clk='1') then	--rising edge detection
			if (start = '1' and busy='0') then --start conversion
				busy <= '1';
				cs <= '0';
				bit_count := 0;
				eoc <= '0';
			end if;
				
			if (busy='1') then 	--already converting
				data_reg <= data_reg(14 downto 0) & miso; --shift to the left?
				if (bit_count=15) then --conversion done
					busy <= '0';
					eoc <= '1';
					cs <= '1';
					data <=data_reg(13 downto 4); --transfer to register
				end if;
				bit_count := bit_count + 1;	--increment counter
			end if;
		end if;
	end process;
		
	sck <= clk; --clock passthrough
	chsel <= channel_select; --chsel passthrough
end convertible;

