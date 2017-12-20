-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
-- Date        : Fri Dec  8 12:32:04 2017
-- Host        : DESKTOP-N854F8E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/Aklas/Desktop/microSense_topLevel/microSense/microSense.srcs/sources_1/bd/microSense_top_level/ip/microSense_top_level_top_level_SAR_0_0/microSense_top_level_top_level_SAR_0_0_sim_netlist.vhdl
-- Design      : microSense_top_level_top_level_SAR_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microSense_top_level_top_level_SAR_0_0_Averager is
  port (
    distance_mm : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of microSense_top_level_top_level_SAR_0_0_Averager : entity is "Averager";
end microSense_top_level_top_level_SAR_0_0_Averager;

architecture STRUCTURE of microSense_top_level_top_level_SAR_0_0_Averager is
  signal counter : STD_LOGIC;
  signal \counter_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal i_sample : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal itotal : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal itotal1 : STD_LOGIC;
  signal \itotal[11]_i_2_n_0\ : STD_LOGIC;
  signal \itotal[11]_i_3_n_0\ : STD_LOGIC;
  signal \itotal[11]_i_4_n_0\ : STD_LOGIC;
  signal \itotal[11]_i_5_n_0\ : STD_LOGIC;
  signal \itotal[11]_i_6_n_0\ : STD_LOGIC;
  signal \itotal[12]_i_4_n_0\ : STD_LOGIC;
  signal \itotal[12]_i_5_n_0\ : STD_LOGIC;
  signal \itotal[12]_i_6_n_0\ : STD_LOGIC;
  signal \itotal[3]_i_2_n_0\ : STD_LOGIC;
  signal \itotal[3]_i_3_n_0\ : STD_LOGIC;
  signal \itotal[3]_i_4_n_0\ : STD_LOGIC;
  signal \itotal[3]_i_5_n_0\ : STD_LOGIC;
  signal \itotal[3]_i_6_n_0\ : STD_LOGIC;
  signal \itotal[3]_i_7_n_0\ : STD_LOGIC;
  signal \itotal[3]_i_8_n_0\ : STD_LOGIC;
  signal \itotal[3]_i_9_n_0\ : STD_LOGIC;
  signal \itotal[7]_i_2_n_0\ : STD_LOGIC;
  signal \itotal[7]_i_3_n_0\ : STD_LOGIC;
  signal \itotal[7]_i_4_n_0\ : STD_LOGIC;
  signal \itotal[7]_i_5_n_0\ : STD_LOGIC;
  signal \itotal[7]_i_6_n_0\ : STD_LOGIC;
  signal \itotal[7]_i_7_n_0\ : STD_LOGIC;
  signal \itotal[7]_i_8_n_0\ : STD_LOGIC;
  signal \itotal[7]_i_9_n_0\ : STD_LOGIC;
  signal \itotal_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \itotal_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \itotal_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \itotal_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \itotal_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \itotal_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \itotal_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \itotal_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \itotal_reg[12]_i_3_n_7\ : STD_LOGIC;
  signal \itotal_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \itotal_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \itotal_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \itotal_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \itotal_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \itotal_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \itotal_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \itotal_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \itotal_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \itotal_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \itotal_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \itotal_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \itotal_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \itotal_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \itotal_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \itotal_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \sample_counter_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal total : STD_LOGIC_VECTOR ( 12 downto 4 );
  signal NLW_average_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 9 );
  signal NLW_average_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_average_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_average_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_itotal_reg[12]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_itotal_reg[12]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of average_reg : label is "p0_d9";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of average_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of average_reg : label is 4608;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of average_reg : label is "U0/the_Averager/average";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of average_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of average_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of average_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of average_reg : label is 8;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[1]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[3]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \itotal[12]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sample_counter[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sample_counter[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sample_counter[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sample_counter[3]_i_1\ : label is "soft_lutpair1";
begin
average_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"018A019000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"012D01330139013F0144014A01500156015C01610167016D01730179017F0184",
      INIT_04 => X"00F700FB00FE010101050108010B010F011201150119011C011F012301260129",
      INIT_05 => X"00C200C500C800CC00CF00D200D600D900DC00E000E300E600EA00ED00F100F4",
      INIT_06 => X"00B800BA00BC00BE00C000C100C300C500C700C900CB00CD00CF00B800BB00BE",
      INIT_07 => X"009D009E009F00A000A100A200A300A300A400A500A600A700B100B300B400B6",
      INIT_08 => X"008F00900091009200930094009400950096009700980099009A009B009C009C",
      INIT_09 => X"0081008200830084008500860086008700880089008A008B008C008D008D008E",
      INIT_0A => X"00730074007500760077007700780079007A007B007C007D007E007F007F0080",
      INIT_0B => X"006500660067006800690069006A006B006C006D006E006F0070007000710072",
      INIT_0C => X"005E005E005F005F005F00600060006100610062006200620063006300630064",
      INIT_0D => X"00550055005600560056005700570057005A005B005B005C005C005C005D005D",
      INIT_0E => X"0050005000510051005100520052005200530053005300540054005400540055",
      INIT_0F => X"004B004B004C004C004C004D004D004D004E004E004E004F004F004F004F0050",
      INIT_10 => X"004600460047004700470048004800480049004900490049004A004A004A004B",
      INIT_11 => X"0041004100420042004200430043004300430044004400440045004500450046",
      INIT_12 => X"003C003C003D003D003D003D003E003E003E003F003F003F0040004000400041",
      INIT_13 => X"0039003900390039003A003A003A003A003A003B003A003A003B003B003B003C",
      INIT_14 => X"0036003600360036003600370037003700370037003800380038003800380039",
      INIT_15 => X"0032003300330033003300330034003400340034003400350035003500350035",
      INIT_16 => X"002F002F00300030003000300030003100310031003100310032003200320032",
      INIT_17 => X"002C002C002C002D002D002D002D002D002E002E002E002E002E002F002F002F",
      INIT_18 => X"0029002900290029002A002A002A002A002A002B002B002B002B002B002C002C",
      INIT_19 => X"0026002600260026002600270027002700270027002800280028002800280029",
      INIT_1A => X"0023002300230023002300240024002400240024002500250025002500250025",
      INIT_1B => X"001F002000200020002000200021002100210021002100220022002200220022",
      INIT_1C => X"001C001C001D001D001D001D001D001E001E001E001E001E001F001F001F001F",
      INIT_1D => X"000000000000000000000000000000000000000000000000000000000000001C",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13) => '0',
      ADDRARDADDR(12 downto 4) => total(12 downto 4),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DIADI(15 downto 0) => B"0000000111111111",
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 9) => NLW_average_reg_DOADO_UNCONNECTED(15 downto 9),
      DOADO(8 downto 0) => distance_mm(8 downto 0),
      DOBDO(15 downto 0) => NLW_average_reg_DOBDO_UNCONNECTED(15 downto 0),
      DOPADOP(1 downto 0) => NLW_average_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_average_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
\counter[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\counter[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(1),
      O => \p_0_in__0\(2)
    );
\counter[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(3),
      O => \p_0_in__0\(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_reg__0\(3),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(0),
      I3 => \counter_reg__0\(2),
      I4 => \counter_reg__0\(4),
      O => \p_0_in__0\(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6CCCCCCCCCCCCCCC"
    )
        port map (
      I0 => \counter_reg__0\(4),
      I1 => \counter_reg__0\(5),
      I2 => \counter_reg__0\(2),
      I3 => \counter_reg__0\(0),
      I4 => \counter_reg__0\(1),
      I5 => \counter_reg__0\(3),
      O => \p_0_in__0\(5)
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => enable,
      D => \p_0_in__0\(0),
      Q => \counter_reg__0\(0),
      R => counter
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => enable,
      D => \p_0_in__0\(1),
      Q => \counter_reg__0\(1),
      R => counter
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => enable,
      D => \p_0_in__0\(2),
      Q => \counter_reg__0\(2),
      R => counter
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => enable,
      D => \p_0_in__0\(3),
      Q => \counter_reg__0\(3),
      R => counter
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => enable,
      D => \p_0_in__0\(4),
      Q => \counter_reg__0\(4),
      R => counter
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => enable,
      D => \p_0_in__0\(5),
      Q => \counter_reg__0\(5),
      R => counter
    );
\i_sample_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(0),
      Q => i_sample(0),
      R => '0'
    );
\i_sample_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(1),
      Q => i_sample(1),
      R => '0'
    );
\i_sample_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(2),
      Q => i_sample(2),
      R => '0'
    );
\i_sample_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(3),
      Q => i_sample(3),
      R => '0'
    );
\i_sample_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(4),
      Q => i_sample(4),
      R => '0'
    );
\i_sample_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(5),
      Q => i_sample(5),
      R => '0'
    );
\i_sample_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(6),
      Q => i_sample(6),
      R => '0'
    );
\i_sample_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(7),
      Q => i_sample(7),
      R => '0'
    );
\i_sample_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(8),
      Q => i_sample(8),
      R => '0'
    );
\itotal[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_sample(8),
      I1 => itotal1,
      O => \itotal[11]_i_2_n_0\
    );
\itotal[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => itotal(11),
      I1 => itotal1,
      O => \itotal[11]_i_3_n_0\
    );
\itotal[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => itotal(10),
      I1 => itotal1,
      O => \itotal[11]_i_4_n_0\
    );
\itotal[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => itotal(9),
      I1 => itotal1,
      O => \itotal[11]_i_5_n_0\
    );
\itotal[11]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => i_sample(8),
      I1 => itotal(8),
      I2 => itotal1,
      I3 => Q(8),
      O => \itotal[11]_i_6_n_0\
    );
\itotal[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => \itotal[12]_i_4_n_0\,
      I1 => \counter_reg__0\(5),
      I2 => \counter_reg__0\(4),
      I3 => \counter_reg__0\(3),
      I4 => \sample_counter_reg__0\(3),
      I5 => enable,
      O => itotal1
    );
\itotal[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \counter_reg__0\(5),
      I1 => \counter_reg__0\(4),
      I2 => enable,
      I3 => \counter_reg__0\(3),
      I4 => \itotal[12]_i_5_n_0\,
      O => counter
    );
\itotal[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(1),
      I3 => \sample_counter_reg__0\(2),
      I4 => \sample_counter_reg__0\(0),
      I5 => \sample_counter_reg__0\(1),
      O => \itotal[12]_i_4_n_0\
    );
\itotal[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \counter_reg__0\(1),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(2),
      O => \itotal[12]_i_5_n_0\
    );
\itotal[12]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => itotal(12),
      I1 => itotal1,
      O => \itotal[12]_i_6_n_0\
    );
\itotal[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_sample(3),
      I1 => itotal1,
      O => \itotal[3]_i_2_n_0\
    );
\itotal[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_sample(2),
      I1 => itotal1,
      O => \itotal[3]_i_3_n_0\
    );
\itotal[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_sample(1),
      I1 => itotal1,
      O => \itotal[3]_i_4_n_0\
    );
\itotal[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_sample(0),
      I1 => itotal1,
      O => \itotal[3]_i_5_n_0\
    );
\itotal[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => i_sample(3),
      I1 => itotal(3),
      I2 => itotal1,
      I3 => Q(3),
      O => \itotal[3]_i_6_n_0\
    );
\itotal[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => i_sample(2),
      I1 => itotal(2),
      I2 => itotal1,
      I3 => Q(2),
      O => \itotal[3]_i_7_n_0\
    );
\itotal[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => i_sample(1),
      I1 => itotal(1),
      I2 => itotal1,
      I3 => Q(1),
      O => \itotal[3]_i_8_n_0\
    );
\itotal[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => i_sample(0),
      I1 => itotal(0),
      I2 => itotal1,
      I3 => Q(0),
      O => \itotal[3]_i_9_n_0\
    );
\itotal[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_sample(7),
      I1 => itotal1,
      O => \itotal[7]_i_2_n_0\
    );
\itotal[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_sample(6),
      I1 => itotal1,
      O => \itotal[7]_i_3_n_0\
    );
\itotal[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_sample(5),
      I1 => itotal1,
      O => \itotal[7]_i_4_n_0\
    );
\itotal[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_sample(4),
      I1 => itotal1,
      O => \itotal[7]_i_5_n_0\
    );
\itotal[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => i_sample(7),
      I1 => itotal(7),
      I2 => itotal1,
      I3 => Q(7),
      O => \itotal[7]_i_6_n_0\
    );
\itotal[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => i_sample(6),
      I1 => itotal(6),
      I2 => itotal1,
      I3 => Q(6),
      O => \itotal[7]_i_7_n_0\
    );
\itotal[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => i_sample(5),
      I1 => itotal(5),
      I2 => itotal1,
      I3 => Q(5),
      O => \itotal[7]_i_8_n_0\
    );
\itotal[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => i_sample(4),
      I1 => itotal(4),
      I2 => itotal1,
      I3 => Q(4),
      O => \itotal[7]_i_9_n_0\
    );
\itotal_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \itotal_reg[3]_i_1_n_7\,
      Q => itotal(0),
      R => '0'
    );
\itotal_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \itotal_reg[11]_i_1_n_5\,
      Q => itotal(10),
      R => itotal1
    );
\itotal_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \itotal_reg[11]_i_1_n_4\,
      Q => itotal(11),
      R => itotal1
    );
\itotal_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \itotal_reg[7]_i_1_n_0\,
      CO(3) => \itotal_reg[11]_i_1_n_0\,
      CO(2) => \itotal_reg[11]_i_1_n_1\,
      CO(1) => \itotal_reg[11]_i_1_n_2\,
      CO(0) => \itotal_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \itotal[11]_i_2_n_0\,
      O(3) => \itotal_reg[11]_i_1_n_4\,
      O(2) => \itotal_reg[11]_i_1_n_5\,
      O(1) => \itotal_reg[11]_i_1_n_6\,
      O(0) => \itotal_reg[11]_i_1_n_7\,
      S(3) => \itotal[11]_i_3_n_0\,
      S(2) => \itotal[11]_i_4_n_0\,
      S(1) => \itotal[11]_i_5_n_0\,
      S(0) => \itotal[11]_i_6_n_0\
    );
\itotal_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \itotal_reg[12]_i_3_n_7\,
      Q => itotal(12),
      R => itotal1
    );
\itotal_reg[12]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \itotal_reg[11]_i_1_n_0\,
      CO(3 downto 0) => \NLW_itotal_reg[12]_i_3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_itotal_reg[12]_i_3_O_UNCONNECTED\(3 downto 1),
      O(0) => \itotal_reg[12]_i_3_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \itotal[12]_i_6_n_0\
    );
\itotal_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \itotal_reg[3]_i_1_n_6\,
      Q => itotal(1),
      R => '0'
    );
\itotal_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \itotal_reg[3]_i_1_n_5\,
      Q => itotal(2),
      R => '0'
    );
\itotal_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \itotal_reg[3]_i_1_n_4\,
      Q => itotal(3),
      R => '0'
    );
\itotal_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \itotal_reg[3]_i_1_n_0\,
      CO(2) => \itotal_reg[3]_i_1_n_1\,
      CO(1) => \itotal_reg[3]_i_1_n_2\,
      CO(0) => \itotal_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \itotal[3]_i_2_n_0\,
      DI(2) => \itotal[3]_i_3_n_0\,
      DI(1) => \itotal[3]_i_4_n_0\,
      DI(0) => \itotal[3]_i_5_n_0\,
      O(3) => \itotal_reg[3]_i_1_n_4\,
      O(2) => \itotal_reg[3]_i_1_n_5\,
      O(1) => \itotal_reg[3]_i_1_n_6\,
      O(0) => \itotal_reg[3]_i_1_n_7\,
      S(3) => \itotal[3]_i_6_n_0\,
      S(2) => \itotal[3]_i_7_n_0\,
      S(1) => \itotal[3]_i_8_n_0\,
      S(0) => \itotal[3]_i_9_n_0\
    );
\itotal_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \itotal_reg[7]_i_1_n_7\,
      Q => itotal(4),
      R => '0'
    );
\itotal_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \itotal_reg[7]_i_1_n_6\,
      Q => itotal(5),
      R => '0'
    );
\itotal_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \itotal_reg[7]_i_1_n_5\,
      Q => itotal(6),
      R => '0'
    );
\itotal_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \itotal_reg[7]_i_1_n_4\,
      Q => itotal(7),
      R => '0'
    );
\itotal_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \itotal_reg[3]_i_1_n_0\,
      CO(3) => \itotal_reg[7]_i_1_n_0\,
      CO(2) => \itotal_reg[7]_i_1_n_1\,
      CO(1) => \itotal_reg[7]_i_1_n_2\,
      CO(0) => \itotal_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \itotal[7]_i_2_n_0\,
      DI(2) => \itotal[7]_i_3_n_0\,
      DI(1) => \itotal[7]_i_4_n_0\,
      DI(0) => \itotal[7]_i_5_n_0\,
      O(3) => \itotal_reg[7]_i_1_n_4\,
      O(2) => \itotal_reg[7]_i_1_n_5\,
      O(1) => \itotal_reg[7]_i_1_n_6\,
      O(0) => \itotal_reg[7]_i_1_n_7\,
      S(3) => \itotal[7]_i_6_n_0\,
      S(2) => \itotal[7]_i_7_n_0\,
      S(1) => \itotal[7]_i_8_n_0\,
      S(0) => \itotal[7]_i_9_n_0\
    );
\itotal_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \itotal_reg[11]_i_1_n_7\,
      Q => itotal(8),
      R => '0'
    );
\itotal_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \itotal_reg[11]_i_1_n_6\,
      Q => itotal(9),
      R => itotal1
    );
\sample_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sample_counter_reg__0\(0),
      O => \p_0_in__1\(0)
    );
\sample_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sample_counter_reg__0\(0),
      I1 => \sample_counter_reg__0\(1),
      O => \p_0_in__1\(1)
    );
\sample_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \sample_counter_reg__0\(1),
      I1 => \sample_counter_reg__0\(0),
      I2 => \sample_counter_reg__0\(2),
      O => \p_0_in__1\(2)
    );
\sample_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \sample_counter_reg__0\(2),
      I1 => \sample_counter_reg__0\(0),
      I2 => \sample_counter_reg__0\(1),
      I3 => \sample_counter_reg__0\(3),
      O => \p_0_in__1\(3)
    );
\sample_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \p_0_in__1\(0),
      Q => \sample_counter_reg__0\(0),
      R => itotal1
    );
\sample_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \p_0_in__1\(1),
      Q => \sample_counter_reg__0\(1),
      R => itotal1
    );
\sample_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \p_0_in__1\(2),
      Q => \sample_counter_reg__0\(2),
      R => itotal1
    );
\sample_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \p_0_in__1\(3),
      Q => \sample_counter_reg__0\(3),
      R => itotal1
    );
\total_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => itotal1,
      D => itotal(10),
      Q => total(10),
      R => '0'
    );
\total_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => itotal1,
      D => itotal(11),
      Q => total(11),
      R => '0'
    );
\total_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => itotal1,
      D => itotal(12),
      Q => total(12),
      R => '0'
    );
\total_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => itotal1,
      D => itotal(4),
      Q => total(4),
      R => '0'
    );
\total_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => itotal1,
      D => itotal(5),
      Q => total(5),
      R => '0'
    );
\total_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => itotal1,
      D => itotal(6),
      Q => total(6),
      R => '0'
    );
\total_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => itotal1,
      D => itotal(7),
      Q => total(7),
      R => '0'
    );
\total_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => itotal1,
      D => itotal(8),
      Q => total(8),
      R => '0'
    );
\total_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => itotal1,
      D => itotal(9),
      Q => total(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microSense_top_level_top_level_SAR_0_0_PWM_generator is
  port (
    SAR_output : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \iduty_reg[8]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \iduty_reg[8]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of microSense_top_level_top_level_SAR_0_0_PWM_generator : entity is "PWM_generator";
end microSense_top_level_top_level_SAR_0_0_PWM_generator;

architecture STRUCTURE of microSense_top_level_top_level_SAR_0_0_PWM_generator is
  signal \PWM0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal PWM0_carry_i_5_n_0 : STD_LOGIC;
  signal PWM0_carry_i_6_n_0 : STD_LOGIC;
  signal PWM0_carry_i_7_n_0 : STD_LOGIC;
  signal PWM0_carry_i_8_n_0 : STD_LOGIC;
  signal PWM0_carry_n_0 : STD_LOGIC;
  signal PWM0_carry_n_1 : STD_LOGIC;
  signal PWM0_carry_n_2 : STD_LOGIC;
  signal PWM0_carry_n_3 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal counter : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \counter[8]_i_2_n_0\ : STD_LOGIC;
  signal NLW_PWM0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PWM0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_PWM0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[1]_i_1__1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter[2]_i_1__1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter[3]_i_1__1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter[8]_i_2\ : label is "soft_lutpair5";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
PWM0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => PWM0_carry_n_0,
      CO(2) => PWM0_carry_n_1,
      CO(1) => PWM0_carry_n_2,
      CO(0) => PWM0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_PWM0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => PWM0_carry_i_5_n_0,
      S(2) => PWM0_carry_i_6_n_0,
      S(1) => PWM0_carry_i_7_n_0,
      S(0) => PWM0_carry_i_8_n_0
    );
\PWM0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => PWM0_carry_n_0,
      CO(3 downto 1) => \NLW_PWM0_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => SAR_output,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \iduty_reg[8]\(0),
      O(3 downto 0) => \NLW_PWM0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \PWM0_carry__0_i_2_n_0\
    );
\PWM0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \iduty_reg[8]_0\(8),
      O => \PWM0_carry__0_i_2_n_0\
    );
PWM0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(7),
      I1 => \iduty_reg[8]_0\(7),
      I2 => \^q\(6),
      I3 => \iduty_reg[8]_0\(6),
      O => PWM0_carry_i_5_n_0
    );
PWM0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(5),
      I1 => \iduty_reg[8]_0\(5),
      I2 => \^q\(4),
      I3 => \iduty_reg[8]_0\(4),
      O => PWM0_carry_i_6_n_0
    );
PWM0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \iduty_reg[8]_0\(3),
      I2 => \^q\(2),
      I3 => \iduty_reg[8]_0\(2),
      O => PWM0_carry_i_7_n_0
    );
PWM0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(1),
      I1 => \iduty_reg[8]_0\(1),
      I2 => \^q\(0),
      I3 => \iduty_reg[8]_0\(0),
      O => PWM0_carry_i_8_n_0
    );
\counter[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => counter(0)
    );
\counter[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => counter(1)
    );
\counter[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => counter(2)
    );
\counter[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => counter(3)
    );
\counter[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00000000FFF7"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(7),
      I2 => \^q\(5),
      I3 => \^q\(6),
      I4 => \counter[8]_i_2_n_0\,
      I5 => \^q\(4),
      O => counter(4)
    );
\counter[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(4),
      O => counter(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \counter[8]_i_2_n_0\,
      I3 => \^q\(5),
      O => counter(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF3FFFFD00C00000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(6),
      I2 => \^q\(4),
      I3 => \counter[8]_i_2_n_0\,
      I4 => \^q\(5),
      I5 => \^q\(7),
      O => counter(7)
    );
\counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFEFFFF20000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \counter[8]_i_2_n_0\,
      I2 => \^q\(4),
      I3 => \^q\(6),
      I4 => \^q\(7),
      I5 => \^q\(8),
      O => counter(8)
    );
\counter[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \counter[8]_i_2_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => counter(0),
      Q => \^q\(0),
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => counter(1),
      Q => \^q\(1),
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => counter(2),
      Q => \^q\(2),
      R => '0'
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => counter(3),
      Q => \^q\(3),
      R => '0'
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => counter(4),
      Q => \^q\(4),
      R => '0'
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => counter(5),
      Q => \^q\(5),
      R => '0'
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => counter(6),
      Q => \^q\(6),
      R => '0'
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => counter(7),
      Q => \^q\(7),
      R => '0'
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => counter(8),
      Q => \^q\(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microSense_top_level_top_level_SAR_0_0_SAR is
  port (
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    SAR_output : out STD_LOGIC_VECTOR ( 0 to 0 );
    \i_sample_reg[8]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clk : in STD_LOGIC;
    ext_reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \counter_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    SAR_input : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of microSense_top_level_top_level_SAR_0_0_SAR : entity is "SAR";
end microSense_top_level_top_level_SAR_0_0_SAR;

architecture STRUCTURE of microSense_top_level_top_level_SAR_0_0_SAR is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal bit_counter : STD_LOGIC;
  signal bit_counter0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \bit_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal counter : STD_LOGIC;
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[3]_i_3_n_0\ : STD_LOGIC;
  signal \counter_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal duty0 : STD_LOGIC;
  signal enable_read_i_1_n_0 : STD_LOGIC;
  signal enable_read_i_2_n_0 : STD_LOGIC;
  signal enable_read_i_3_n_0 : STD_LOGIC;
  signal enable_read_i_4_n_0 : STD_LOGIC;
  signal enable_read_i_5_n_0 : STD_LOGIC;
  signal enable_read_reg_n_0 : STD_LOGIC;
  signal \iduty[0]_i_1_n_0\ : STD_LOGIC;
  signal \iduty[1]_i_1_n_0\ : STD_LOGIC;
  signal \iduty[2]_i_1_n_0\ : STD_LOGIC;
  signal \iduty[2]_i_2_n_0\ : STD_LOGIC;
  signal \iduty[3]_i_1_n_0\ : STD_LOGIC;
  signal \iduty[3]_i_2_n_0\ : STD_LOGIC;
  signal \iduty[4]_i_1_n_0\ : STD_LOGIC;
  signal \iduty[4]_i_2_n_0\ : STD_LOGIC;
  signal \iduty[5]_i_1_n_0\ : STD_LOGIC;
  signal \iduty[6]_i_1_n_0\ : STD_LOGIC;
  signal \iduty[6]_i_2_n_0\ : STD_LOGIC;
  signal \iduty[6]_i_3_n_0\ : STD_LOGIC;
  signal \iduty[7]_i_1_n_0\ : STD_LOGIC;
  signal \iduty[7]_i_2_n_0\ : STD_LOGIC;
  signal \iduty[7]_i_3_n_0\ : STD_LOGIC;
  signal \iduty[8]_i_2_n_0\ : STD_LOGIC;
  signal \iduty[8]_i_3_n_0\ : STD_LOGIC;
  signal isample : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \isample[0]_i_1_n_0\ : STD_LOGIC;
  signal \isample[1]_i_1_n_0\ : STD_LOGIC;
  signal \isample[2]_i_1_n_0\ : STD_LOGIC;
  signal \isample[3]_i_1_n_0\ : STD_LOGIC;
  signal \isample[4]_i_1_n_0\ : STD_LOGIC;
  signal \isample[5]_i_1_n_0\ : STD_LOGIC;
  signal \isample[6]_i_1_n_0\ : STD_LOGIC;
  signal \isample[7]_i_1_n_0\ : STD_LOGIC;
  signal \isample[7]_i_2_n_0\ : STD_LOGIC;
  signal \isample[8]_i_1_n_0\ : STD_LOGIC;
  signal \isample[8]_i_2_n_0\ : STD_LOGIC;
  signal \isample[8]_i_3_n_0\ : STD_LOGIC;
  signal \isample[8]_i_4_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal pass_sample : STD_LOGIC;
  signal pass_sample_i_1_n_0 : STD_LOGIC;
  signal pass_sample_i_2_n_0 : STD_LOGIC;
  signal pass_sample_i_3_n_0 : STD_LOGIC;
  signal pass_sample_reg_n_0 : STD_LOGIC;
  signal \sample[8]_i_1_n_0\ : STD_LOGIC;
  signal \sample[8]_i_2_n_0\ : STD_LOGIC;
  signal \sample[8]_i_3_n_0\ : STD_LOGIC;
  signal \sample[8]_i_4_n_0\ : STD_LOGIC;
  signal \sample[8]_i_5_n_0\ : STD_LOGIC;
  signal \sample[8]_i_6_n_0\ : STD_LOGIC;
  signal \sample[8]_i_7_n_0\ : STD_LOGIC;
  signal \sample[8]_i_8_n_0\ : STD_LOGIC;
  signal \sample[8]_i_9_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bit_counter[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bit_counter[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bit_counter[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \bit_counter[3]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \counter[2]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \counter[3]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of enable_read_i_5 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \iduty[4]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \iduty[7]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \iduty[8]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \isample[8]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \isample[8]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sample[8]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sample[8]_i_7\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sample[8]_i_8\ : label is "soft_lutpair10";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\PWM0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(8),
      I1 => \counter_reg[8]\(8),
      O => SAR_output(0)
    );
PWM0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(7),
      I1 => \counter_reg[8]\(7),
      I2 => \^q\(6),
      I3 => \counter_reg[8]\(6),
      O => DI(3)
    );
PWM0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(5),
      I1 => \counter_reg[8]\(5),
      I2 => \^q\(4),
      I3 => \counter_reg[8]\(4),
      O => DI(2)
    );
PWM0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \counter_reg[8]\(3),
      I2 => \^q\(2),
      I3 => \counter_reg[8]\(2),
      O => DI(1)
    );
PWM0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \counter_reg[8]\(1),
      I2 => \^q\(0),
      I3 => \counter_reg[8]\(0),
      O => DI(0)
    );
\bit_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_counter_reg__0\(0),
      O => bit_counter0(0)
    );
\bit_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \bit_counter_reg__0\(1),
      I1 => \bit_counter_reg__0\(0),
      O => bit_counter0(1)
    );
\bit_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \bit_counter_reg__0\(2),
      I1 => \bit_counter_reg__0\(0),
      I2 => \bit_counter_reg__0\(1),
      O => bit_counter0(2)
    );
\bit_counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF80"
    )
        port map (
      I0 => \sample[8]_i_2_n_0\,
      I1 => enable_read_reg_n_0,
      I2 => pass_sample_reg_n_0,
      I3 => \sample[8]_i_3_n_0\,
      I4 => \sample[8]_i_4_n_0\,
      I5 => ext_reset,
      O => \bit_counter[3]_i_1_n_0\
    );
\bit_counter[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAA800000000"
    )
        port map (
      I0 => \isample[8]_i_3_n_0\,
      I1 => \bit_counter_reg__0\(1),
      I2 => \bit_counter_reg__0\(0),
      I3 => \bit_counter_reg__0\(2),
      I4 => \bit_counter_reg__0\(3),
      I5 => enable_read_reg_n_0,
      O => bit_counter
    );
\bit_counter[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \bit_counter_reg__0\(2),
      I1 => \bit_counter_reg__0\(0),
      I2 => \bit_counter_reg__0\(1),
      I3 => \bit_counter_reg__0\(3),
      O => bit_counter0(3)
    );
\bit_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bit_counter,
      D => bit_counter0(0),
      Q => \bit_counter_reg__0\(0),
      R => \bit_counter[3]_i_1_n_0\
    );
\bit_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bit_counter,
      D => bit_counter0(1),
      Q => \bit_counter_reg__0\(1),
      R => \bit_counter[3]_i_1_n_0\
    );
\bit_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bit_counter,
      D => bit_counter0(2),
      Q => \bit_counter_reg__0\(2),
      R => \bit_counter[3]_i_1_n_0\
    );
\bit_counter_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => bit_counter,
      D => bit_counter0(3),
      Q => \bit_counter_reg__0\(3),
      S => \bit_counter[3]_i_1_n_0\
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg__0\(0),
      O => \counter[0]_i_1_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      O => p_0_in(1)
    );
\counter[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_reg__0\(1),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(2),
      O => p_0_in(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0F0F0E0E0E"
    )
        port map (
      I0 => \sample[8]_i_3_n_0\,
      I1 => ext_reset,
      I2 => E(0),
      I3 => enable_read_reg_n_0,
      I4 => \counter[3]_i_3_n_0\,
      I5 => \sample[8]_i_4_n_0\,
      O => counter
    );
\counter[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(3),
      O => p_0_in(3)
    );
\counter[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E8E8"
    )
        port map (
      I0 => \isample[8]_i_3_n_0\,
      I1 => \isample[8]_i_4_n_0\,
      I2 => \bit_counter_reg__0\(3),
      I3 => pass_sample_reg_n_0,
      I4 => \counter_reg__0\(2),
      O => \counter[3]_i_3_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \counter[0]_i_1_n_0\,
      Q => \counter_reg__0\(0),
      R => counter
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => p_0_in(1),
      Q => \counter_reg__0\(1),
      R => counter
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => p_0_in(2),
      Q => \counter_reg__0\(2),
      R => counter
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => p_0_in(3),
      Q => \counter_reg__0\(3),
      R => counter
    );
enable_read_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54440000"
    )
        port map (
      I0 => ext_reset,
      I1 => enable_read_i_2_n_0,
      I2 => pass_sample_reg_n_0,
      I3 => enable_read_reg_n_0,
      I4 => enable_read_i_3_n_0,
      O => enable_read_i_1_n_0
    );
enable_read_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010001011110010"
    )
        port map (
      I0 => enable_read_reg_n_0,
      I1 => \counter_reg__0\(3),
      I2 => enable_read_i_4_n_0,
      I3 => \bit_counter_reg__0\(3),
      I4 => enable_read_i_5_n_0,
      I5 => \isample[8]_i_4_n_0\,
      O => enable_read_i_2_n_0
    );
enable_read_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => \bit_counter_reg__0\(3),
      I1 => \isample[8]_i_4_n_0\,
      I2 => \counter_reg__0\(3),
      I3 => \counter_reg__0\(1),
      I4 => \counter_reg__0\(0),
      I5 => \counter_reg__0\(2),
      O => enable_read_i_3_n_0
    );
enable_read_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"104040020A000080"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => \bit_counter_reg__0\(0),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(0),
      I4 => \bit_counter_reg__0\(1),
      I5 => \bit_counter_reg__0\(2),
      O => enable_read_i_4_n_0
    );
enable_read_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0840"
    )
        port map (
      I0 => \counter_reg__0\(1),
      I1 => \counter_reg__0\(0),
      I2 => \bit_counter_reg__0\(3),
      I3 => \counter_reg__0\(2),
      O => enable_read_i_5_n_0
    );
enable_read_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => enable_read_i_1_n_0,
      Q => enable_read_reg_n_0,
      R => '0'
    );
\iduty[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFEAAAB"
    )
        port map (
      I0 => \isample[8]_i_3_n_0\,
      I1 => \bit_counter_reg__0\(1),
      I2 => \bit_counter_reg__0\(0),
      I3 => \bit_counter_reg__0\(2),
      I4 => \bit_counter_reg__0\(3),
      I5 => ext_reset,
      O => \iduty[0]_i_1_n_0\
    );
\iduty[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888F88888"
    )
        port map (
      I0 => isample(1),
      I1 => \iduty[2]_i_2_n_0\,
      I2 => \iduty[6]_i_3_n_0\,
      I3 => \bit_counter_reg__0\(1),
      I4 => \bit_counter_reg__0\(0),
      I5 => \bit_counter_reg__0\(2),
      O => \iduty[1]_i_1_n_0\
    );
\iduty[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888F88888"
    )
        port map (
      I0 => isample(2),
      I1 => \iduty[2]_i_2_n_0\,
      I2 => \iduty[6]_i_3_n_0\,
      I3 => \bit_counter_reg__0\(0),
      I4 => \bit_counter_reg__0\(1),
      I5 => \bit_counter_reg__0\(2),
      O => \iduty[2]_i_1_n_0\
    );
\iduty[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555544444541"
    )
        port map (
      I0 => ext_reset,
      I1 => \bit_counter_reg__0\(3),
      I2 => \bit_counter_reg__0\(1),
      I3 => \bit_counter_reg__0\(0),
      I4 => \bit_counter_reg__0\(2),
      I5 => \isample[8]_i_3_n_0\,
      O => \iduty[2]_i_2_n_0\
    );
\iduty[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888F8888888"
    )
        port map (
      I0 => isample(3),
      I1 => \iduty[3]_i_2_n_0\,
      I2 => \iduty[6]_i_3_n_0\,
      I3 => \bit_counter_reg__0\(1),
      I4 => \bit_counter_reg__0\(0),
      I5 => \bit_counter_reg__0\(2),
      O => \iduty[3]_i_1_n_0\
    );
\iduty[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555544445551"
    )
        port map (
      I0 => ext_reset,
      I1 => \bit_counter_reg__0\(3),
      I2 => \bit_counter_reg__0\(1),
      I3 => \bit_counter_reg__0\(0),
      I4 => \bit_counter_reg__0\(2),
      I5 => \isample[8]_i_3_n_0\,
      O => \iduty[3]_i_2_n_0\
    );
\iduty[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA30000A8AA"
    )
        port map (
      I0 => isample(4),
      I1 => \iduty[4]_i_2_n_0\,
      I2 => \isample[8]_i_3_n_0\,
      I3 => \bit_counter_reg__0\(3),
      I4 => ext_reset,
      I5 => \bit_counter_reg__0\(2),
      O => \iduty[4]_i_1_n_0\
    );
\iduty[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bit_counter_reg__0\(0),
      I1 => \bit_counter_reg__0\(1),
      O => \iduty[4]_i_2_n_0\
    );
\iduty[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8888888888888"
    )
        port map (
      I0 => isample(5),
      I1 => \iduty[6]_i_2_n_0\,
      I2 => \bit_counter_reg__0\(0),
      I3 => \bit_counter_reg__0\(1),
      I4 => \iduty[6]_i_3_n_0\,
      I5 => \bit_counter_reg__0\(2),
      O => \iduty[5]_i_1_n_0\
    );
\iduty[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8888888888888"
    )
        port map (
      I0 => isample(6),
      I1 => \iduty[6]_i_2_n_0\,
      I2 => \bit_counter_reg__0\(1),
      I3 => \bit_counter_reg__0\(0),
      I4 => \iduty[6]_i_3_n_0\,
      I5 => \bit_counter_reg__0\(2),
      O => \iduty[6]_i_1_n_0\
    );
\iduty[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFEBBFF"
    )
        port map (
      I0 => \isample[8]_i_3_n_0\,
      I1 => \bit_counter_reg__0\(2),
      I2 => \bit_counter_reg__0\(0),
      I3 => \bit_counter_reg__0\(1),
      I4 => \bit_counter_reg__0\(3),
      I5 => ext_reset,
      O => \iduty[6]_i_2_n_0\
    );
\iduty[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => ext_reset,
      I1 => \bit_counter_reg__0\(3),
      I2 => \counter_reg__0\(3),
      I3 => \counter_reg__0\(1),
      I4 => \counter_reg__0\(0),
      I5 => \counter_reg__0\(2),
      O => \iduty[6]_i_3_n_0\
    );
\iduty[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FF8F8888"
    )
        port map (
      I0 => \iduty[7]_i_2_n_0\,
      I1 => \iduty[7]_i_3_n_0\,
      I2 => \bit_counter_reg__0\(3),
      I3 => \iduty[8]_i_3_n_0\,
      I4 => isample(7),
      I5 => ext_reset,
      O => \iduty[7]_i_1_n_0\
    );
\iduty[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \isample[8]_i_3_n_0\,
      I1 => \bit_counter_reg__0\(3),
      I2 => ext_reset,
      I3 => \bit_counter_reg__0\(2),
      O => \iduty[7]_i_2_n_0\
    );
\iduty[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_counter_reg__0\(0),
      I1 => \bit_counter_reg__0\(1),
      O => \iduty[7]_i_3_n_0\
    );
\iduty[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF01FFFF"
    )
        port map (
      I0 => \bit_counter_reg__0\(2),
      I1 => \bit_counter_reg__0\(0),
      I2 => \bit_counter_reg__0\(1),
      I3 => ext_reset,
      I4 => \bit_counter_reg__0\(3),
      I5 => \isample[8]_i_3_n_0\,
      O => duty0
    );
\iduty[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00BA"
    )
        port map (
      I0 => isample(8),
      I1 => \iduty[8]_i_3_n_0\,
      I2 => \bit_counter_reg__0\(3),
      I3 => ext_reset,
      O => \iduty[8]_i_2_n_0\
    );
\iduty[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \isample[8]_i_4_n_0\,
      I1 => \counter_reg__0\(3),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(0),
      I4 => \counter_reg__0\(2),
      O => \iduty[8]_i_3_n_0\
    );
\iduty_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => duty0,
      D => \iduty[0]_i_1_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\iduty_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => duty0,
      D => \iduty[1]_i_1_n_0\,
      Q => \^q\(1),
      R => '0'
    );
\iduty_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => duty0,
      D => \iduty[2]_i_1_n_0\,
      Q => \^q\(2),
      R => '0'
    );
\iduty_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => duty0,
      D => \iduty[3]_i_1_n_0\,
      Q => \^q\(3),
      R => '0'
    );
\iduty_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => duty0,
      D => \iduty[4]_i_1_n_0\,
      Q => \^q\(4),
      R => '0'
    );
\iduty_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => duty0,
      D => \iduty[5]_i_1_n_0\,
      Q => \^q\(5),
      R => '0'
    );
\iduty_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => duty0,
      D => \iduty[6]_i_1_n_0\,
      Q => \^q\(6),
      R => '0'
    );
\iduty_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => duty0,
      D => \iduty[7]_i_1_n_0\,
      Q => \^q\(7),
      R => '0'
    );
\iduty_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => duty0,
      D => \iduty[8]_i_2_n_0\,
      Q => \^q\(8),
      R => '0'
    );
\isample[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => SAR_input,
      I1 => \isample[7]_i_2_n_0\,
      I2 => \bit_counter_reg__0\(2),
      I3 => \bit_counter_reg__0\(0),
      I4 => \bit_counter_reg__0\(1),
      I5 => isample(0),
      O => \isample[0]_i_1_n_0\
    );
\isample[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => SAR_input,
      I1 => \bit_counter_reg__0\(2),
      I2 => \bit_counter_reg__0\(0),
      I3 => \bit_counter_reg__0\(1),
      I4 => \isample[7]_i_2_n_0\,
      I5 => isample(1),
      O => \isample[1]_i_1_n_0\
    );
\isample[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => SAR_input,
      I1 => \bit_counter_reg__0\(2),
      I2 => \bit_counter_reg__0\(1),
      I3 => \bit_counter_reg__0\(0),
      I4 => \isample[7]_i_2_n_0\,
      I5 => isample(2),
      O => \isample[2]_i_1_n_0\
    );
\isample[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => SAR_input,
      I1 => \bit_counter_reg__0\(2),
      I2 => \bit_counter_reg__0\(0),
      I3 => \bit_counter_reg__0\(1),
      I4 => \isample[7]_i_2_n_0\,
      I5 => isample(3),
      O => \isample[3]_i_1_n_0\
    );
\isample[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => SAR_input,
      I1 => \bit_counter_reg__0\(2),
      I2 => \isample[7]_i_2_n_0\,
      I3 => \bit_counter_reg__0\(1),
      I4 => \bit_counter_reg__0\(0),
      I5 => isample(4),
      O => \isample[4]_i_1_n_0\
    );
\isample[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => SAR_input,
      I1 => \bit_counter_reg__0\(2),
      I2 => \isample[7]_i_2_n_0\,
      I3 => \bit_counter_reg__0\(1),
      I4 => \bit_counter_reg__0\(0),
      I5 => isample(5),
      O => \isample[5]_i_1_n_0\
    );
\isample[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => SAR_input,
      I1 => \bit_counter_reg__0\(2),
      I2 => \isample[7]_i_2_n_0\,
      I3 => \bit_counter_reg__0\(0),
      I4 => \bit_counter_reg__0\(1),
      I5 => isample(6),
      O => \isample[6]_i_1_n_0\
    );
\isample[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => SAR_input,
      I1 => \bit_counter_reg__0\(2),
      I2 => \isample[7]_i_2_n_0\,
      I3 => \bit_counter_reg__0\(1),
      I4 => \bit_counter_reg__0\(0),
      I5 => isample(7),
      O => \isample[7]_i_1_n_0\
    );
\isample[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \bit_counter_reg__0\(3),
      I1 => enable_read_reg_n_0,
      I2 => pass_sample_reg_n_0,
      I3 => \isample[8]_i_3_n_0\,
      O => \isample[7]_i_2_n_0\
    );
\isample[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010000"
    )
        port map (
      I0 => \bit_counter_reg__0\(2),
      I1 => \bit_counter_reg__0\(0),
      I2 => \bit_counter_reg__0\(1),
      I3 => \isample[8]_i_3_n_0\,
      I4 => \bit_counter_reg__0\(3),
      I5 => ext_reset,
      O => \isample[8]_i_1_n_0\
    );
\isample[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => SAR_input,
      I1 => \bit_counter_reg__0\(3),
      I2 => enable_read_reg_n_0,
      I3 => pass_sample_reg_n_0,
      I4 => \isample[8]_i_4_n_0\,
      I5 => isample(8),
      O => \isample[8]_i_2_n_0\
    );
\isample[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(3),
      O => \isample[8]_i_3_n_0\
    );
\isample[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \bit_counter_reg__0\(1),
      I1 => \bit_counter_reg__0\(0),
      I2 => \bit_counter_reg__0\(2),
      O => \isample[8]_i_4_n_0\
    );
\isample_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \isample[0]_i_1_n_0\,
      Q => isample(0),
      R => \isample[8]_i_1_n_0\
    );
\isample_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \isample[1]_i_1_n_0\,
      Q => isample(1),
      R => \isample[8]_i_1_n_0\
    );
\isample_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \isample[2]_i_1_n_0\,
      Q => isample(2),
      R => \isample[8]_i_1_n_0\
    );
\isample_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \isample[3]_i_1_n_0\,
      Q => isample(3),
      R => \isample[8]_i_1_n_0\
    );
\isample_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \isample[4]_i_1_n_0\,
      Q => isample(4),
      R => \isample[8]_i_1_n_0\
    );
\isample_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \isample[5]_i_1_n_0\,
      Q => isample(5),
      R => \isample[8]_i_1_n_0\
    );
\isample_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \isample[6]_i_1_n_0\,
      Q => isample(6),
      R => \isample[8]_i_1_n_0\
    );
\isample_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \isample[7]_i_1_n_0\,
      Q => isample(7),
      R => \isample[8]_i_1_n_0\
    );
\isample_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \isample[8]_i_2_n_0\,
      Q => isample(8),
      R => \isample[8]_i_1_n_0\
    );
pass_sample_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0002"
    )
        port map (
      I0 => pass_sample_reg_n_0,
      I1 => \sample[8]_i_4_n_0\,
      I2 => pass_sample_i_2_n_0,
      I3 => pass_sample_i_3_n_0,
      I4 => pass_sample,
      I5 => ext_reset,
      O => pass_sample_i_1_n_0
    );
pass_sample_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFE000000"
    )
        port map (
      I0 => \counter_reg__0\(1),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(2),
      I3 => enable_read_reg_n_0,
      I4 => pass_sample_reg_n_0,
      I5 => \sample[8]_i_3_n_0\,
      O => pass_sample_i_2_n_0
    );
pass_sample_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \bit_counter_reg__0\(1),
      I1 => \bit_counter_reg__0\(0),
      I2 => \bit_counter_reg__0\(2),
      I3 => enable_read_reg_n_0,
      I4 => \bit_counter_reg__0\(3),
      I5 => \isample[8]_i_3_n_0\,
      O => pass_sample_i_3_n_0
    );
pass_sample_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \bit_counter_reg__0\(3),
      I1 => enable_read_reg_n_0,
      I2 => pass_sample_reg_n_0,
      I3 => \bit_counter_reg__0\(2),
      I4 => \bit_counter_reg__0\(0),
      I5 => \bit_counter_reg__0\(1),
      O => pass_sample
    );
pass_sample_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pass_sample_i_1_n_0,
      Q => pass_sample_reg_n_0,
      R => '0'
    );
\sample[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFF80"
    )
        port map (
      I0 => \sample[8]_i_2_n_0\,
      I1 => enable_read_reg_n_0,
      I2 => pass_sample_reg_n_0,
      I3 => \sample[8]_i_3_n_0\,
      I4 => \sample[8]_i_4_n_0\,
      I5 => ext_reset,
      O => \sample[8]_i_1_n_0\
    );
\sample[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \counter_reg__0\(1),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(2),
      O => \sample[8]_i_2_n_0\
    );
\sample[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080000000300000"
    )
        port map (
      I0 => \bit_counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(0),
      I3 => \bit_counter_reg__0\(3),
      I4 => pass_sample_reg_n_0,
      I5 => \counter_reg__0\(2),
      O => \sample[8]_i_3_n_0\
    );
\sample[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \sample[8]_i_5_n_0\,
      I1 => \sample[8]_i_6_n_0\,
      I2 => \sample[8]_i_7_n_0\,
      I3 => \sample[8]_i_8_n_0\,
      I4 => \sample[8]_i_9_n_0\,
      O => \sample[8]_i_4_n_0\
    );
\sample[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"908090409080F040"
    )
        port map (
      I0 => \bit_counter_reg__0\(2),
      I1 => \counter_reg__0\(2),
      I2 => pass_sample_reg_n_0,
      I3 => \counter_reg__0\(1),
      I4 => \counter_reg__0\(0),
      I5 => \bit_counter_reg__0\(0),
      O => \sample[8]_i_5_n_0\
    );
\sample[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A00A4009A004400"
    )
        port map (
      I0 => \bit_counter_reg__0\(1),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(0),
      I3 => pass_sample_reg_n_0,
      I4 => \counter_reg__0\(2),
      I5 => \bit_counter_reg__0\(0),
      O => \sample[8]_i_6_n_0\
    );
\sample[8]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \bit_counter_reg__0\(0),
      I1 => \counter_reg__0\(2),
      I2 => pass_sample_reg_n_0,
      I3 => \counter_reg__0\(1),
      I4 => \counter_reg__0\(0),
      O => \sample[8]_i_7_n_0\
    );
\sample[8]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888880"
    )
        port map (
      I0 => pass_sample_reg_n_0,
      I1 => \bit_counter_reg__0\(3),
      I2 => \bit_counter_reg__0\(2),
      I3 => \bit_counter_reg__0\(0),
      I4 => \bit_counter_reg__0\(1),
      O => \sample[8]_i_8_n_0\
    );
\sample[8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => \bit_counter_reg__0\(3),
      I1 => \counter_reg__0\(2),
      I2 => pass_sample_reg_n_0,
      I3 => \counter_reg__0\(3),
      O => \sample[8]_i_9_n_0\
    );
\sample_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample[8]_i_1_n_0\,
      D => isample(0),
      Q => \i_sample_reg[8]\(0),
      R => '0'
    );
\sample_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample[8]_i_1_n_0\,
      D => isample(1),
      Q => \i_sample_reg[8]\(1),
      R => '0'
    );
\sample_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample[8]_i_1_n_0\,
      D => isample(2),
      Q => \i_sample_reg[8]\(2),
      R => '0'
    );
\sample_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample[8]_i_1_n_0\,
      D => isample(3),
      Q => \i_sample_reg[8]\(3),
      R => '0'
    );
\sample_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample[8]_i_1_n_0\,
      D => isample(4),
      Q => \i_sample_reg[8]\(4),
      R => '0'
    );
\sample_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample[8]_i_1_n_0\,
      D => isample(5),
      Q => \i_sample_reg[8]\(5),
      R => '0'
    );
\sample_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample[8]_i_1_n_0\,
      D => isample(6),
      Q => \i_sample_reg[8]\(6),
      R => '0'
    );
\sample_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample[8]_i_1_n_0\,
      D => isample(7),
      Q => \i_sample_reg[8]\(7),
      R => '0'
    );
\sample_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample[8]_i_1_n_0\,
      D => isample(8),
      Q => \i_sample_reg[8]\(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microSense_top_level_top_level_SAR_0_0_downcounter_fixed is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    ext_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of microSense_top_level_top_level_SAR_0_0_downcounter_fixed : entity is "downcounter_fixed";
end microSense_top_level_top_level_SAR_0_0_downcounter_fixed;

architecture STRUCTURE of microSense_top_level_top_level_SAR_0_0_downcounter_fixed is
  signal \current_count[0]_i_10_n_0\ : STD_LOGIC;
  signal \current_count[0]_i_11_n_0\ : STD_LOGIC;
  signal \current_count[0]_i_2_n_0\ : STD_LOGIC;
  signal \current_count[0]_i_3_n_0\ : STD_LOGIC;
  signal \current_count[0]_i_4_n_0\ : STD_LOGIC;
  signal \current_count[0]_i_5_n_0\ : STD_LOGIC;
  signal \current_count[0]_i_6_n_0\ : STD_LOGIC;
  signal \current_count[0]_i_7_n_0\ : STD_LOGIC;
  signal \current_count[0]_i_8_n_0\ : STD_LOGIC;
  signal \current_count[0]_i_9_n_0\ : STD_LOGIC;
  signal \current_count[12]_i_2_n_0\ : STD_LOGIC;
  signal \current_count[12]_i_3_n_0\ : STD_LOGIC;
  signal \current_count[12]_i_4_n_0\ : STD_LOGIC;
  signal \current_count[12]_i_5_n_0\ : STD_LOGIC;
  signal \current_count[12]_i_6_n_0\ : STD_LOGIC;
  signal \current_count[12]_i_7_n_0\ : STD_LOGIC;
  signal \current_count[16]_i_2_n_0\ : STD_LOGIC;
  signal \current_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \current_count[4]_i_3_n_0\ : STD_LOGIC;
  signal \current_count[4]_i_4_n_0\ : STD_LOGIC;
  signal \current_count[4]_i_5_n_0\ : STD_LOGIC;
  signal \current_count[4]_i_6_n_0\ : STD_LOGIC;
  signal \current_count[4]_i_7_n_0\ : STD_LOGIC;
  signal \current_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \current_count[8]_i_3_n_0\ : STD_LOGIC;
  signal \current_count[8]_i_4_n_0\ : STD_LOGIC;
  signal \current_count[8]_i_5_n_0\ : STD_LOGIC;
  signal \current_count[8]_i_6_n_0\ : STD_LOGIC;
  signal \current_count[8]_i_7_n_0\ : STD_LOGIC;
  signal current_count_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \current_count_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \current_count_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \current_count_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \current_count_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \current_count_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \current_count_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \current_count_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \current_count_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \current_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \current_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \current_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \current_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \current_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \current_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \current_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \current_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \current_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \current_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \current_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \current_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \current_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \current_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \current_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \current_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \current_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \current_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \current_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \current_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \current_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \current_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \current_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \current_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \current_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal eqOp : STD_LOGIC;
  signal i_zero_i_2_n_0 : STD_LOGIC;
  signal i_zero_i_3_n_0 : STD_LOGIC;
  signal i_zero_i_4_n_0 : STD_LOGIC;
  signal i_zero_i_5_n_0 : STD_LOGIC;
  signal i_zero_i_6_n_0 : STD_LOGIC;
  signal \NLW_current_count_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_current_count_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \current_count[12]_i_7\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of i_zero_i_4 : label is "soft_lutpair7";
begin
\current_count[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => i_zero_i_5_n_0,
      I1 => i_zero_i_4_n_0,
      I2 => current_count_reg(15),
      I3 => current_count_reg(9),
      I4 => current_count_reg(10),
      I5 => i_zero_i_2_n_0,
      O => \current_count[0]_i_10_n_0\
    );
\current_count[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => i_zero_i_5_n_0,
      I1 => current_count_reg(6),
      I2 => current_count_reg(5),
      I3 => current_count_reg(11),
      I4 => current_count_reg(8),
      I5 => current_count_reg(15),
      O => \current_count[0]_i_11_n_0\
    );
\current_count[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \current_count[0]_i_10_n_0\,
      I1 => current_count_reg(7),
      I2 => current_count_reg(4),
      I3 => current_count_reg(2),
      I4 => current_count_reg(3),
      O => \current_count[0]_i_2_n_0\
    );
\current_count[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \current_count[0]_i_10_n_0\,
      I1 => current_count_reg(7),
      I2 => current_count_reg(4),
      I3 => current_count_reg(3),
      I4 => current_count_reg(2),
      O => \current_count[0]_i_3_n_0\
    );
\current_count[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000001"
    )
        port map (
      I0 => current_count_reg(10),
      I1 => current_count_reg(9),
      I2 => \current_count[0]_i_11_n_0\,
      I3 => i_zero_i_6_n_0,
      I4 => current_count_reg(0),
      I5 => current_count_reg(1),
      O => \current_count[0]_i_4_n_0\
    );
\current_count[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000001"
    )
        port map (
      I0 => current_count_reg(10),
      I1 => current_count_reg(9),
      I2 => \current_count[0]_i_11_n_0\,
      I3 => i_zero_i_6_n_0,
      I4 => current_count_reg(1),
      I5 => current_count_reg(0),
      O => \current_count[0]_i_5_n_0\
    );
\current_count[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_count_reg(3),
      O => \current_count[0]_i_6_n_0\
    );
\current_count[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_count_reg(2),
      O => \current_count[0]_i_7_n_0\
    );
\current_count[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_count_reg(1),
      O => \current_count[0]_i_8_n_0\
    );
\current_count[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_count_reg(0),
      O => \current_count[0]_i_9_n_0\
    );
\current_count[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000001"
    )
        port map (
      I0 => \current_count[12]_i_7_n_0\,
      I1 => i_zero_i_2_n_0,
      I2 => current_count_reg(9),
      I3 => current_count_reg(10),
      I4 => i_zero_i_6_n_0,
      I5 => current_count_reg(15),
      O => \current_count[12]_i_2_n_0\
    );
\current_count[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_count_reg(15),
      O => \current_count[12]_i_3_n_0\
    );
\current_count[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => current_count_reg(14),
      I1 => eqOp,
      O => \current_count[12]_i_4_n_0\
    );
\current_count[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => current_count_reg(13),
      I1 => eqOp,
      O => \current_count[12]_i_5_n_0\
    );
\current_count[12]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => current_count_reg(12),
      I1 => eqOp,
      O => \current_count[12]_i_6_n_0\
    );
\current_count[12]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => current_count_reg(8),
      I1 => current_count_reg(11),
      I2 => current_count_reg(5),
      I3 => current_count_reg(6),
      I4 => i_zero_i_5_n_0,
      O => \current_count[12]_i_7_n_0\
    );
\current_count[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_count_reg(16),
      O => \current_count[16]_i_2_n_0\
    );
\current_count[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \current_count[0]_i_10_n_0\,
      I1 => current_count_reg(3),
      I2 => current_count_reg(2),
      I3 => current_count_reg(4),
      I4 => current_count_reg(7),
      O => \current_count[4]_i_2_n_0\
    );
\current_count[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \current_count[0]_i_10_n_0\,
      I1 => current_count_reg(3),
      I2 => current_count_reg(2),
      I3 => current_count_reg(7),
      I4 => current_count_reg(4),
      O => \current_count[4]_i_3_n_0\
    );
\current_count[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_count_reg(7),
      O => \current_count[4]_i_4_n_0\
    );
\current_count[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => current_count_reg(6),
      I1 => eqOp,
      O => \current_count[4]_i_5_n_0\
    );
\current_count[4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => current_count_reg(5),
      I1 => eqOp,
      O => \current_count[4]_i_6_n_0\
    );
\current_count[4]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_count_reg(4),
      O => \current_count[4]_i_7_n_0\
    );
\current_count[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000001"
    )
        port map (
      I0 => \current_count[0]_i_11_n_0\,
      I1 => current_count_reg(9),
      I2 => current_count_reg(0),
      I3 => current_count_reg(1),
      I4 => i_zero_i_6_n_0,
      I5 => current_count_reg(10),
      O => \current_count[8]_i_2_n_0\
    );
\current_count[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000001"
    )
        port map (
      I0 => \current_count[0]_i_11_n_0\,
      I1 => current_count_reg(10),
      I2 => current_count_reg(0),
      I3 => current_count_reg(1),
      I4 => i_zero_i_6_n_0,
      I5 => current_count_reg(9),
      O => \current_count[8]_i_3_n_0\
    );
\current_count[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => current_count_reg(11),
      I1 => eqOp,
      O => \current_count[8]_i_4_n_0\
    );
\current_count[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_count_reg(10),
      O => \current_count[8]_i_5_n_0\
    );
\current_count[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_count_reg(9),
      O => \current_count[8]_i_6_n_0\
    );
\current_count[8]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => current_count_reg(8),
      I1 => eqOp,
      O => \current_count[8]_i_7_n_0\
    );
\current_count_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \current_count_reg[0]_i_1_n_7\,
      PRE => ext_reset,
      Q => current_count_reg(0)
    );
\current_count_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \current_count_reg[0]_i_1_n_0\,
      CO(2) => \current_count_reg[0]_i_1_n_1\,
      CO(1) => \current_count_reg[0]_i_1_n_2\,
      CO(0) => \current_count_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \current_count[0]_i_2_n_0\,
      DI(2) => \current_count[0]_i_3_n_0\,
      DI(1) => \current_count[0]_i_4_n_0\,
      DI(0) => \current_count[0]_i_5_n_0\,
      O(3) => \current_count_reg[0]_i_1_n_4\,
      O(2) => \current_count_reg[0]_i_1_n_5\,
      O(1) => \current_count_reg[0]_i_1_n_6\,
      O(0) => \current_count_reg[0]_i_1_n_7\,
      S(3) => \current_count[0]_i_6_n_0\,
      S(2) => \current_count[0]_i_7_n_0\,
      S(1) => \current_count[0]_i_8_n_0\,
      S(0) => \current_count[0]_i_9_n_0\
    );
\current_count_reg[10]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \current_count_reg[8]_i_1_n_5\,
      PRE => ext_reset,
      Q => current_count_reg(10)
    );
\current_count_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => ext_reset,
      D => \current_count_reg[8]_i_1_n_4\,
      Q => current_count_reg(11)
    );
\current_count_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => ext_reset,
      D => \current_count_reg[12]_i_1_n_7\,
      Q => current_count_reg(12)
    );
\current_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_count_reg[8]_i_1_n_0\,
      CO(3) => \current_count_reg[12]_i_1_n_0\,
      CO(2) => \current_count_reg[12]_i_1_n_1\,
      CO(1) => \current_count_reg[12]_i_1_n_2\,
      CO(0) => \current_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \current_count[12]_i_2_n_0\,
      DI(2 downto 0) => current_count_reg(14 downto 12),
      O(3) => \current_count_reg[12]_i_1_n_4\,
      O(2) => \current_count_reg[12]_i_1_n_5\,
      O(1) => \current_count_reg[12]_i_1_n_6\,
      O(0) => \current_count_reg[12]_i_1_n_7\,
      S(3) => \current_count[12]_i_3_n_0\,
      S(2) => \current_count[12]_i_4_n_0\,
      S(1) => \current_count[12]_i_5_n_0\,
      S(0) => \current_count[12]_i_6_n_0\
    );
\current_count_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => ext_reset,
      D => \current_count_reg[12]_i_1_n_6\,
      Q => current_count_reg(13)
    );
\current_count_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => ext_reset,
      D => \current_count_reg[12]_i_1_n_5\,
      Q => current_count_reg(14)
    );
\current_count_reg[15]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \current_count_reg[12]_i_1_n_4\,
      PRE => ext_reset,
      Q => current_count_reg(15)
    );
\current_count_reg[16]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \current_count_reg[16]_i_1_n_7\,
      PRE => ext_reset,
      Q => current_count_reg(16)
    );
\current_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_count_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_current_count_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_current_count_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \current_count_reg[16]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \current_count[16]_i_2_n_0\
    );
\current_count_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \current_count_reg[0]_i_1_n_6\,
      PRE => ext_reset,
      Q => current_count_reg(1)
    );
\current_count_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \current_count_reg[0]_i_1_n_5\,
      PRE => ext_reset,
      Q => current_count_reg(2)
    );
\current_count_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \current_count_reg[0]_i_1_n_4\,
      PRE => ext_reset,
      Q => current_count_reg(3)
    );
\current_count_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \current_count_reg[4]_i_1_n_7\,
      PRE => ext_reset,
      Q => current_count_reg(4)
    );
\current_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_count_reg[0]_i_1_n_0\,
      CO(3) => \current_count_reg[4]_i_1_n_0\,
      CO(2) => \current_count_reg[4]_i_1_n_1\,
      CO(1) => \current_count_reg[4]_i_1_n_2\,
      CO(0) => \current_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \current_count[4]_i_2_n_0\,
      DI(2 downto 1) => current_count_reg(6 downto 5),
      DI(0) => \current_count[4]_i_3_n_0\,
      O(3) => \current_count_reg[4]_i_1_n_4\,
      O(2) => \current_count_reg[4]_i_1_n_5\,
      O(1) => \current_count_reg[4]_i_1_n_6\,
      O(0) => \current_count_reg[4]_i_1_n_7\,
      S(3) => \current_count[4]_i_4_n_0\,
      S(2) => \current_count[4]_i_5_n_0\,
      S(1) => \current_count[4]_i_6_n_0\,
      S(0) => \current_count[4]_i_7_n_0\
    );
\current_count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => ext_reset,
      D => \current_count_reg[4]_i_1_n_6\,
      Q => current_count_reg(5)
    );
\current_count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => ext_reset,
      D => \current_count_reg[4]_i_1_n_5\,
      Q => current_count_reg(6)
    );
\current_count_reg[7]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \current_count_reg[4]_i_1_n_4\,
      PRE => ext_reset,
      Q => current_count_reg(7)
    );
\current_count_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => ext_reset,
      D => \current_count_reg[8]_i_1_n_7\,
      Q => current_count_reg(8)
    );
\current_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_count_reg[4]_i_1_n_0\,
      CO(3) => \current_count_reg[8]_i_1_n_0\,
      CO(2) => \current_count_reg[8]_i_1_n_1\,
      CO(1) => \current_count_reg[8]_i_1_n_2\,
      CO(0) => \current_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => current_count_reg(11),
      DI(2) => \current_count[8]_i_2_n_0\,
      DI(1) => \current_count[8]_i_3_n_0\,
      DI(0) => current_count_reg(8),
      O(3) => \current_count_reg[8]_i_1_n_4\,
      O(2) => \current_count_reg[8]_i_1_n_5\,
      O(1) => \current_count_reg[8]_i_1_n_6\,
      O(0) => \current_count_reg[8]_i_1_n_7\,
      S(3) => \current_count[8]_i_4_n_0\,
      S(2) => \current_count[8]_i_5_n_0\,
      S(1) => \current_count[8]_i_6_n_0\,
      S(0) => \current_count[8]_i_7_n_0\
    );
\current_count_reg[9]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \current_count_reg[8]_i_1_n_6\,
      PRE => ext_reset,
      Q => current_count_reg(9)
    );
i_zero_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => i_zero_i_2_n_0,
      I1 => i_zero_i_3_n_0,
      I2 => current_count_reg(15),
      I3 => i_zero_i_4_n_0,
      I4 => i_zero_i_5_n_0,
      I5 => i_zero_i_6_n_0,
      O => eqOp
    );
i_zero_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => current_count_reg(0),
      I1 => current_count_reg(1),
      O => i_zero_i_2_n_0
    );
i_zero_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => current_count_reg(9),
      I1 => current_count_reg(10),
      O => i_zero_i_3_n_0
    );
i_zero_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => current_count_reg(6),
      I1 => current_count_reg(5),
      I2 => current_count_reg(11),
      I3 => current_count_reg(8),
      O => i_zero_i_4_n_0
    );
i_zero_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => current_count_reg(13),
      I1 => current_count_reg(12),
      I2 => current_count_reg(16),
      I3 => current_count_reg(14),
      O => i_zero_i_5_n_0
    );
i_zero_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => current_count_reg(3),
      I1 => current_count_reg(2),
      I2 => current_count_reg(7),
      I3 => current_count_reg(4),
      O => i_zero_i_6_n_0
    );
i_zero_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => ext_reset,
      D => eqOp,
      Q => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microSense_top_level_top_level_SAR_0_0_top_level_SAR is
  port (
    distance_mm : out STD_LOGIC_VECTOR ( 8 downto 0 );
    SAR_output : out STD_LOGIC;
    clk : in STD_LOGIC;
    ext_reset : in STD_LOGIC;
    SAR_input : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of microSense_top_level_top_level_SAR_0_0_top_level_SAR : entity is "top_level_SAR";
end microSense_top_level_top_level_SAR_0_0_top_level_SAR;

architecture STRUCTURE of microSense_top_level_top_level_SAR_0_0_top_level_SAR is
  signal duty : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal enable : STD_LOGIC;
  signal sample : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal the_PWM_generator_n_1 : STD_LOGIC;
  signal the_PWM_generator_n_2 : STD_LOGIC;
  signal the_PWM_generator_n_3 : STD_LOGIC;
  signal the_PWM_generator_n_4 : STD_LOGIC;
  signal the_PWM_generator_n_5 : STD_LOGIC;
  signal the_PWM_generator_n_6 : STD_LOGIC;
  signal the_PWM_generator_n_7 : STD_LOGIC;
  signal the_PWM_generator_n_8 : STD_LOGIC;
  signal the_PWM_generator_n_9 : STD_LOGIC;
  signal the_SAR_n_0 : STD_LOGIC;
  signal the_SAR_n_1 : STD_LOGIC;
  signal the_SAR_n_13 : STD_LOGIC;
  signal the_SAR_n_2 : STD_LOGIC;
  signal the_SAR_n_3 : STD_LOGIC;
begin
the_Averager: entity work.microSense_top_level_top_level_SAR_0_0_Averager
     port map (
      Q(8 downto 0) => sample(8 downto 0),
      clk => clk,
      distance_mm(8 downto 0) => distance_mm(8 downto 0),
      enable => enable
    );
the_PWM_generator: entity work.microSense_top_level_top_level_SAR_0_0_PWM_generator
     port map (
      DI(3) => the_SAR_n_0,
      DI(2) => the_SAR_n_1,
      DI(1) => the_SAR_n_2,
      DI(0) => the_SAR_n_3,
      Q(8) => the_PWM_generator_n_1,
      Q(7) => the_PWM_generator_n_2,
      Q(6) => the_PWM_generator_n_3,
      Q(5) => the_PWM_generator_n_4,
      Q(4) => the_PWM_generator_n_5,
      Q(3) => the_PWM_generator_n_6,
      Q(2) => the_PWM_generator_n_7,
      Q(1) => the_PWM_generator_n_8,
      Q(0) => the_PWM_generator_n_9,
      SAR_output => SAR_output,
      clk => clk,
      \iduty_reg[8]\(0) => the_SAR_n_13,
      \iduty_reg[8]_0\(8 downto 0) => duty(8 downto 0)
    );
the_RC_clock: entity work.microSense_top_level_top_level_SAR_0_0_downcounter_fixed
     port map (
      E(0) => enable,
      clk => clk,
      ext_reset => ext_reset
    );
the_SAR: entity work.microSense_top_level_top_level_SAR_0_0_SAR
     port map (
      DI(3) => the_SAR_n_0,
      DI(2) => the_SAR_n_1,
      DI(1) => the_SAR_n_2,
      DI(0) => the_SAR_n_3,
      E(0) => enable,
      Q(8 downto 0) => duty(8 downto 0),
      SAR_input => SAR_input,
      SAR_output(0) => the_SAR_n_13,
      clk => clk,
      \counter_reg[8]\(8) => the_PWM_generator_n_1,
      \counter_reg[8]\(7) => the_PWM_generator_n_2,
      \counter_reg[8]\(6) => the_PWM_generator_n_3,
      \counter_reg[8]\(5) => the_PWM_generator_n_4,
      \counter_reg[8]\(4) => the_PWM_generator_n_5,
      \counter_reg[8]\(3) => the_PWM_generator_n_6,
      \counter_reg[8]\(2) => the_PWM_generator_n_7,
      \counter_reg[8]\(1) => the_PWM_generator_n_8,
      \counter_reg[8]\(0) => the_PWM_generator_n_9,
      ext_reset => ext_reset,
      \i_sample_reg[8]\(8 downto 0) => sample(8 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microSense_top_level_top_level_SAR_0_0 is
  port (
    clk : in STD_LOGIC;
    ext_reset : in STD_LOGIC;
    SAR_input : in STD_LOGIC;
    SAR_output : out STD_LOGIC;
    distance_mm : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of microSense_top_level_top_level_SAR_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of microSense_top_level_top_level_SAR_0_0 : entity is "microSense_top_level_top_level_SAR_0_0,top_level_SAR,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of microSense_top_level_top_level_SAR_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of microSense_top_level_top_level_SAR_0_0 : entity is "top_level_SAR,Vivado 2017.3";
end microSense_top_level_top_level_SAR_0_0;

architecture STRUCTURE of microSense_top_level_top_level_SAR_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN microSense_top_level_sys_clock";
  attribute x_interface_info of ext_reset : signal is "xilinx.com:signal:reset:1.0 ext_reset RST";
  attribute x_interface_parameter of ext_reset : signal is "XIL_INTERFACENAME ext_reset, POLARITY ACTIVE_HIGH";
begin
U0: entity work.microSense_top_level_top_level_SAR_0_0_top_level_SAR
     port map (
      SAR_input => SAR_input,
      SAR_output => SAR_output,
      clk => clk,
      distance_mm(8 downto 0) => distance_mm(8 downto 0),
      ext_reset => ext_reset
    );
end STRUCTURE;
