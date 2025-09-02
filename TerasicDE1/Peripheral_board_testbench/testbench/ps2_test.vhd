entity ps2_test is
	port( rst			: in bit;
			ps2c			: in bit;
			ps2d			: in bit;
			key_code		: out bit_vector(7 downto 0);
			break			: out bit;
			data_ready	: out bit);
end ps2_test;

architecture behavioral of ps2_test is
begin
	shift: process(rst, ps2c)
		variable clk_count	: natural;
		variable data_reg1, data_reg2, data_reg3	: bit_vector(10 downto 0);
	begin
		if (rst='0') then
			--initiate signals and variables
			key_code <= (others => '0');
			break <= '0';
			data_ready <= '0';
			clk_count := 0;
			data_reg1 := (others => '0');
			data_reg2 := (others => '0');
			
--		elsif (ps2c'event and ps2c = '0') then --falling edge of ps2 clock
--			data_reg2 := data_reg1(0) & data_reg2(10 downto 1); --shift to right
--			data_reg1 := ps2d & data_reg1(10 downto 1); --shift data in
--			
--			if (clk_count = 10) then
--				if(data_reg2(8 downto 1) = X"F0") then --if break code received
--					key_code <= data_reg1(8 downto 1);	--grab a byte
--					break <= '1';
--					data_ready <= '1';
--				elsif(data_reg1(8 downto 1) /= X"F0") then --make code
--					key_code <= data_reg1(8 downto 1); --grab a byte
--					break <= '0';
--					data_ready <= '1';
--				end if;
--				clk_count := 0; --clear counter when 10
--			else 
--				--increment counter
--				clk_count := clk_count + 1;
--				data_ready <= '0';
--			end if;
--		end if;
--	end process shift;
--end behavioral;








elsif (ps2c'event and ps2c = '0') then --falling edge of ps2 clock
			data_reg3 := data_reg2(0) & data_reg3(10 downto 1);
			data_reg2 := data_reg1(0) & data_reg2(10 downto 1); 
			data_reg1 := ps2d & data_reg1(10 downto 1); --shift data in
			
			if (clk_count = 10) then --when packet received
			
				--if it's a extended break code
				if((data_reg3(8 downto 1) = X"E0") and (data_reg2(8 downto 1) = X"F0")) then
					key_code <= data_reg1(8 downto 1);
					break <= '1';
					data_ready <= '1';
				
				--if it's a extended make code
				elsif((data_reg2(8 downto 1) = X"E0") and (data_reg1(8 downto 1) /= X"F0")) then --if break code received
					key_code <= data_reg1(8 downto 1);	--grab a byte
					break <= '0';
					data_ready <= '1';
				
				-- if it's a simple break code
				elsif(data_reg2(8 downto 1) = X"F0") then --if break code received
					key_code <= data_reg1(8 downto 1);	--grab a byte
					break <= '1';
					data_ready <= '1';
				
				--if it's a simple make code
				elsif((data_reg1(8 downto 1) /= X"F0") and (data_reg1(8 downto 1) /= X"E0")) then --make code
					key_code <= data_reg1(8 downto 1); --grab a byte
					break <= '0';
					data_ready <= '1';
				end if;
				clk_count := 0; --clear counter when packet received
			else 
				--increment counter
				clk_count := clk_count + 1;
				data_ready <= '0';
			end if;
		end if;
	end process shift;
end behavioral;