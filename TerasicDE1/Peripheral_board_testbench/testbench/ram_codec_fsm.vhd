--an array is a collection of elements of the same type
--TYPE type_name IS ARRAY (range_specs) OF element_type;
--TYPE type1 IS ARRAY (NATURAL RANGE <>) OF STD_logic;
--CONSTANT const1 : type1(4 downto 0) := "01010";
--
--

-- add IEEE library and packages: std_logic_1164 and std_logic_arith
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

entity ram_codec_fsm is  --... specify entity interface
    port (
			sclk				: in std_logic;
        clk					: in std_logic;
        rst					: in std_logic;
		  codec_idle		: in std_logic; --
		  start				: in std_logic; --configure codec
		  codec_start		: out std_logic;
		  reg_addr			: out std_logic_vector(6 downto 0);
		  reg_data			: out std_logic_vector(8 downto 0));
end ram_codec_fsm;

architecture behavioral of ram_codec_fsm is
    type TState is (idle, config0, wait0, wait1, wait2, config1, chargedelay);
    signal state : TState;
    constant ROM_SIZE : natural := 10; -- for number of configuration entries--check this number
    type memory is array (NATURAL range 0 to ROM_SIZE-1) of std_logic_vector(15 downto 0);
    constant config_rom : memory := (
        "0001111000000000", -- Reset reg.
		  "0000110000010000", -- Power Down Control reg.
        "0000111000000010", -- Digital Audio Interface Format reg.
        "0000101000010001", -- Digital Audio Path Control reg.
        "0001000000100011", -- Sampling Control reg. (44.1 kHz, USB mode)
        "0000100000010000", -- Analogue Audio Path Control reg.
        "0000000000011000", -- Left Line In reg.
        "0000001000011000",  -- Right Line In reg.
		  --DELAY GOES HERE (72ms)
		  "0001001000000001", -- Active reg.
		  "0000110000000000" -- Power Down Control reg.
    );

BEGIN
    PROCESS(clk, rst)
        variable rom_ptr : natural := 0;
        variable data_reg : std_logic_vector(15 downto 0);
		  variable delay_counter : natural := 0;
		  variable last_sclk : std_logic;
    BEGIN
        IF (rst = '0') THEN
            -- assign initial values to signals and variables
				state <= idle;
				rom_ptr := 0;
				codec_start <= '0';
				
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE state IS
                WHEN idle =>
                    IF (start = '1') THEN
                        state <= config0;
                    ELSE
                        state <= idle;
                    END IF;

                WHEN config0 =>  -- read codec config. info from ROM
                    data_reg := config_rom(rom_ptr); 
                    reg_addr <= data_reg(15 downto 9); -- first seven bits are address
                    reg_data <= data_reg(8 downto 0);
                    codec_start <= '1';
                    state <= wait0;

                WHEN wait0 =>  -- wait until i2c_codec can accept
                    IF (codec_idle = '1') THEN
                        state <= wait1;
                    ELSE
                        state <= wait0;
                    END IF;

                WHEN wait1 =>  -- wait for i2c_codec to begin transmission
                    IF (codec_idle = '0') THEN
                        state <= wait2;
                        codec_start <= '0'; --clear start signal
                    ELSE
                        state <= wait1;
                    END IF;

					 WHEN wait2 =>  -- wait for i2c_codec to finish transmission
					  IF (codec_idle = '1') THEN
							state <= config1;
					  ELSE
							state <= wait2;
					  END IF;
                WHEN config1 =>  -- check if ROM has been fully read
                    rom_ptr := rom_ptr + 1;  -- increment pointer
						  IF ((rom_ptr = 8) OR (rom_ptr = 1)) THEN --Time for delay
								last_sclk := sclk;
								state <= chargedelay;
                    ELSIF rom_ptr = ROM_SIZE THEN --done
								rom_ptr := 0;
                        state <= idle; --if all registers configured then idle this machine
                    ELSE
                        state <= config0;
                    END IF;
					WHEN chargedelay =>
						IF(sclk = '1' AND last_sclk = '0') THEN
							delay_counter := delay_counter + 1;
						END IF;
						
						last_sclk := sclk;
						
						IF (delay_counter = 1728) THEN
							delay_counter := 0;
							--rom_ptr := rom_ptr - 1; --?????????WTF???????
							state <= config0; --continue config
						ELSE
							state <= chargedelay;
						END IF;
            END CASE;
        END IF;
    END PROCESS;
END behavioral;