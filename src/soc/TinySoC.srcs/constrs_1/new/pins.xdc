# reference: https://github.com/trivialmips/nontrivial-mips

# clock and reset
set_property -dict {PACKAGE_PIN AC19 IOSTANDARD LVCMOS33} [get_ports clk]
set_property -dict {PACKAGE_PIN Y3 IOSTANDARD LVCMOS33} [get_ports rst_n]

set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets clk]


# UART interface
set_property -dict {PACKAGE_PIN H19 IOSTANDARD LVCMOS33} [get_ports UART_txd]
set_property -dict {PACKAGE_PIN F23 IOSTANDARD LVCMOS33} [get_ports UART_rxd]


# plugable SPI flash
set_property IOSTANDARD LVCMOS33 [get_ports SPI_*]

set_property PACKAGE_PIN P20 [get_ports SPI_sck]
set_property PACKAGE_PIN R20 [get_ports SPI_ss]
set_property PACKAGE_PIN P19 [get_ports SPI_miso]
set_property PACKAGE_PIN N18 [get_ports SPI_mosi]
set_property PACKAGE_PIN R18 [get_ports SPI_io2]
set_property PACKAGE_PIN R21 [get_ports SPI_io3]


# non-plugable CFG SPI Flash (S25FL128SAGMFI001 NOR 16Mb)
# use clk_in as sck
set_property -dict {PACKAGE_PIN P18 IOSTANDARD LVCMOS33} [get_ports CFG_ss]
set_property -dict {PACKAGE_PIN R15 IOSTANDARD LVCMOS33} [get_ports CFG_miso]
set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVCMOS33} [get_ports CFG_mosi]


# VGA interface (DAC with resistors)
set_property IOSTANDARD LVCMOS33 [get_ports VGA_*]

set_property PACKAGE_PIN U4 [get_ports {VGA_r[3]}]
set_property PACKAGE_PIN U2 [get_ports {VGA_r[2]}]
set_property PACKAGE_PIN T2 [get_ports {VGA_r[1]}]
set_property PACKAGE_PIN T3 [get_ports {VGA_r[0]}]

set_property PACKAGE_PIN R5 [get_ports {VGA_g[3]}]
set_property PACKAGE_PIN U1 [get_ports {VGA_g[2]}]
set_property PACKAGE_PIN R1 [get_ports {VGA_g[1]}]
set_property PACKAGE_PIN R2 [get_ports {VGA_g[0]}]

set_property PACKAGE_PIN P3 [get_ports {VGA_b[3]}]
set_property PACKAGE_PIN P1 [get_ports {VGA_b[2]}]
set_property PACKAGE_PIN N1 [get_ports {VGA_b[1]}]
set_property PACKAGE_PIN P5 [get_ports {VGA_b[0]}]

set_property PACKAGE_PIN U5 [get_ports VGA_hsync]
set_property PACKAGE_PIN U6 [get_ports VGA_vsync]


# single-color LEDS
set_property IOSTANDARD LVCMOS33 [get_ports {led[*]}]

set_property PACKAGE_PIN K23 [get_ports {led[0]}]
set_property PACKAGE_PIN J21 [get_ports {led[1]}]
set_property PACKAGE_PIN H23 [get_ports {led[2]}]
set_property PACKAGE_PIN J19 [get_ports {led[3]}]
set_property PACKAGE_PIN G9 [get_ports {led[4]}]
set_property PACKAGE_PIN J26 [get_ports {led[5]}]
set_property PACKAGE_PIN J23 [get_ports {led[6]}]
set_property PACKAGE_PIN J8 [get_ports {led[7]}]
set_property PACKAGE_PIN H8 [get_ports {led[8]}]
set_property PACKAGE_PIN G8 [get_ports {led[9]}]
set_property PACKAGE_PIN F7 [get_ports {led[10]}]
set_property PACKAGE_PIN A4 [get_ports {led[11]}]
set_property PACKAGE_PIN A5 [get_ports {led[12]}]
set_property PACKAGE_PIN A3 [get_ports {led[13]}]
set_property PACKAGE_PIN D5 [get_ports {led[14]}]
set_property PACKAGE_PIN H7 [get_ports {led[15]}]


# bicolor LEDs
set_property IOSTANDARD LVCMOS33 [get_ports led_rg*]

set_property PACKAGE_PIN G7 [get_ports {led_rg0[0]}]
set_property PACKAGE_PIN F8 [get_ports {led_rg0[1]}]
set_property PACKAGE_PIN B5 [get_ports {led_rg1[0]}]
set_property PACKAGE_PIN D6 [get_ports {led_rg1[1]}]


# number digits
set_property IOSTANDARD LVCMOS33 [get_ports num_*]

set_property PACKAGE_PIN D3 [get_ports {num_csn[7]}]
set_property PACKAGE_PIN D25 [get_ports {num_csn[6]}]
set_property PACKAGE_PIN D26 [get_ports {num_csn[5]}]
set_property PACKAGE_PIN E25 [get_ports {num_csn[4]}]
set_property PACKAGE_PIN E26 [get_ports {num_csn[3]}]
set_property PACKAGE_PIN G25 [get_ports {num_csn[2]}]
set_property PACKAGE_PIN G26 [get_ports {num_csn[1]}]
set_property PACKAGE_PIN H26 [get_ports {num_csn[0]}]

set_property PACKAGE_PIN C3 [get_ports {num_a_g[0]}]
set_property PACKAGE_PIN E6 [get_ports {num_a_g[1]}]
set_property PACKAGE_PIN B2 [get_ports {num_a_g[2]}]
set_property PACKAGE_PIN B4 [get_ports {num_a_g[3]}]
set_property PACKAGE_PIN E5 [get_ports {num_a_g[4]}]
set_property PACKAGE_PIN D4 [get_ports {num_a_g[5]}]
set_property PACKAGE_PIN A2 [get_ports {num_a_g[6]}]
set_property PACKAGE_PIN C4 [get_ports num_a_g_dp]


# keyboard array
set_property IOSTANDARD LVCMOS33 [get_ports btn_key_*]

set_property PACKAGE_PIN V8 [get_ports {btn_key_col[0]}]
set_property PACKAGE_PIN V9 [get_ports {btn_key_col[1]}]
set_property PACKAGE_PIN Y8 [get_ports {btn_key_col[2]}]
set_property PACKAGE_PIN V7 [get_ports {btn_key_col[3]}]
set_property PACKAGE_PIN U7 [get_ports {btn_key_row[0]}]
set_property PACKAGE_PIN W8 [get_ports {btn_key_row[1]}]
set_property PACKAGE_PIN Y7 [get_ports {btn_key_row[2]}]
set_property PACKAGE_PIN AA8 [get_ports {btn_key_row[3]}]


# switches
set_property IOSTANDARD LVCMOS33 [get_ports {switch[*]}]

set_property PACKAGE_PIN AC21 [get_ports {switch[7]}]
set_property PACKAGE_PIN AD24 [get_ports {switch[6]}]
set_property PACKAGE_PIN AC22 [get_ports {switch[5]}]
set_property PACKAGE_PIN AC23 [get_ports {switch[4]}]
set_property PACKAGE_PIN AB6 [get_ports {switch[3]}]
set_property PACKAGE_PIN W6 [get_ports {switch[2]}]
set_property PACKAGE_PIN AA7 [get_ports {switch[1]}]
set_property PACKAGE_PIN Y6 [get_ports {switch[0]}]


# step buttons
set_property -dict {PACKAGE_PIN Y5 IOSTANDARD LVCMOS33} [get_ports {btn_step[0]}]
set_property -dict {PACKAGE_PIN V6 IOSTANDARD LVCMOS33} [get_ports {btn_step[1]}]


# LCD
set_property IOSTANDARD LVCMOS33 [get_ports LCD_*]

set_property PACKAGE_PIN H9 [get_ports {LCD_data[0]}]
set_property PACKAGE_PIN K17 [get_ports {LCD_data[1]}]
set_property PACKAGE_PIN J20 [get_ports {LCD_data[2]}]
set_property PACKAGE_PIN M17 [get_ports {LCD_data[3]}]
set_property PACKAGE_PIN L17 [get_ports {LCD_data[4]}]
set_property PACKAGE_PIN L18 [get_ports {LCD_data[5]}]
set_property PACKAGE_PIN L15 [get_ports {LCD_data[6]}]
set_property PACKAGE_PIN M15 [get_ports {LCD_data[7]}]
set_property PACKAGE_PIN M16 [get_ports {LCD_data[8]}]
set_property PACKAGE_PIN L14 [get_ports {LCD_data[9]}]
set_property PACKAGE_PIN M14 [get_ports {LCD_data[10]}]
set_property PACKAGE_PIN F22 [get_ports {LCD_data[11]}]
set_property PACKAGE_PIN G22 [get_ports {LCD_data[12]}]
set_property PACKAGE_PIN G21 [get_ports {LCD_data[13]}]
set_property PACKAGE_PIN H24 [get_ports {LCD_data[14]}]
set_property PACKAGE_PIN J16 [get_ports {LCD_data[15]}]

set_property PACKAGE_PIN J25 [get_ports LCD_nrst]
set_property PACKAGE_PIN G24 [get_ports LCD_csel]
set_property PACKAGE_PIN K8 [get_ports LCD_rd]
set_property PACKAGE_PIN K16 [get_ports LCD_rs]
set_property PACKAGE_PIN L8 [get_ports LCD_wr]

set_property PACKAGE_PIN J15 [get_ports LCD_lighton]


# DDR pins are not described here but in MIG IP


# misc
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

