## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

##Taggart Bonham and Will Chisholm
##Etch-a-Sketch Constraints file

#Clock signal
set_property PACKAGE_PIN W5 [get_ports mclk]							
	set_property IOSTANDARD LVCMOS33 [get_ports mclk]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports mclk]
 
## Switches
set_property PACKAGE_PIN V17 [get_ports b]					
	set_property IOSTANDARD LVCMOS33 [get_ports b]
set_property PACKAGE_PIN V16 [get_ports g]					
	set_property IOSTANDARD LVCMOS33 [get_ports g]
set_property PACKAGE_PIN W16 [get_ports r]					
	set_property IOSTANDARD LVCMOS33 [get_ports r]
	
set_property PACKAGE_PIN R2 [get_ports rst]					
	set_property IOSTANDARD LVCMOS33 [get_ports rst]
 


##Pmod Header JA
#    ##Sch name = JA3
    set_property PACKAGE_PIN J2 [get_ports XA]                    
        set_property IOSTANDARD LVCMOS33 [get_ports XA]
#    ##Sch name = JA4
    set_property PACKAGE_PIN G2 [get_ports XB]                    
        set_property IOSTANDARD LVCMOS33 [get_ports XB]
  
 
##Pmod Header JC
##Sch name = JC1
set_property PACKAGE_PIN K17 [get_ports YA]					
	set_property IOSTANDARD LVCMOS33 [get_ports YA]
#Sch name = JC2
set_property PACKAGE_PIN M18 [get_ports YB]					
	set_property IOSTANDARD LVCMOS33 [get_ports YB]

	

##VGA Connector
set_property PACKAGE_PIN G19 [get_ports {vgaRed[0]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed[0]}]
set_property PACKAGE_PIN H19 [get_ports {vgaRed[1]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed[1]}]
set_property PACKAGE_PIN J19 [get_ports {vgaRed[2]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed[2]}]
set_property PACKAGE_PIN N19 [get_ports {vgaRed[3]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed[3]}]
set_property PACKAGE_PIN N18 [get_ports {vgaBlue[0]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue[0]}]
set_property PACKAGE_PIN L18 [get_ports {vgaBlue[1]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue[1]}]
set_property PACKAGE_PIN K18 [get_ports {vgaBlue[2]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue[2]}]
set_property PACKAGE_PIN J18 [get_ports {vgaBlue[3]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue[3]}]
set_property PACKAGE_PIN J17 [get_ports {vgaGreen[0]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen[0]}]
set_property PACKAGE_PIN H17 [get_ports {vgaGreen[1]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen[1]}]
set_property PACKAGE_PIN G17 [get_ports {vgaGreen[2]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen[2]}]
set_property PACKAGE_PIN D17 [get_ports {vgaGreen[3]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen[3]}]
set_property PACKAGE_PIN P19 [get_ports H_sync]						
	set_property IOSTANDARD LVCMOS33 [get_ports H_sync]
set_property PACKAGE_PIN R19 [get_ports V_sync]						
	set_property IOSTANDARD LVCMOS33 [get_ports V_sync]

