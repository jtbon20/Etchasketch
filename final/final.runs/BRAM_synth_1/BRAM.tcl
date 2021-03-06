# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir O:/ENGS31/final/final.cache/wt [current_project]
set_property parent.project_path O:/ENGS31/final/final.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:basys3:part0:1.1 [current_project]
read_ip -quiet o:/ENGS31/final/final.srcs/sources_1/ip/BRAM/BRAM.xci
set_property is_locked true [get_files o:/ENGS31/final/final.srcs/sources_1/ip/BRAM/BRAM.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top BRAM -part xc7a35tcpg236-1 -mode out_of_context

rename_ref -prefix_all BRAM_

write_checkpoint -force -noxdef BRAM.dcp

catch { report_utilization -file BRAM_utilization_synth.rpt -pb BRAM_utilization_synth.pb }

if { [catch {
  file copy -force O:/ENGS31/final/final.runs/BRAM_synth_1/BRAM.dcp o:/ENGS31/final/final.srcs/sources_1/ip/BRAM/BRAM.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub o:/ENGS31/final/final.srcs/sources_1/ip/BRAM/BRAM_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub o:/ENGS31/final/final.srcs/sources_1/ip/BRAM/BRAM_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim o:/ENGS31/final/final.srcs/sources_1/ip/BRAM/BRAM_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim o:/ENGS31/final/final.srcs/sources_1/ip/BRAM/BRAM_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if {[file isdir O:/ENGS31/final/final.ip_user_files/ip/BRAM]} {
  catch { 
    file copy -force o:/ENGS31/final/final.srcs/sources_1/ip/BRAM/BRAM_stub.v O:/ENGS31/final/final.ip_user_files/ip/BRAM
  }
}

if {[file isdir O:/ENGS31/final/final.ip_user_files/ip/BRAM]} {
  catch { 
    file copy -force o:/ENGS31/final/final.srcs/sources_1/ip/BRAM/BRAM_stub.vhdl O:/ENGS31/final/final.ip_user_files/ip/BRAM
  }
}
