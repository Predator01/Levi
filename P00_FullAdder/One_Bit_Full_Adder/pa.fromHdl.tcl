
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name One_Bit_Full_Adder -dir "D:/ProySisDigAva/P00_FullAdder/One_Bit_Full_Adder/planAhead_run_5" -part xc6slx16csg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Full_Adder_Bit.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Full-Adder_Bit.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top Full_Adder_Bit $srcset
add_files [list {Full_Adder_Bit.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx16csg324-3
