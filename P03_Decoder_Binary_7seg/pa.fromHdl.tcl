
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name P03_Decoder_Binary_7seg -dir "D:/ProySisDigAva/Levi/P03_Decoder_Binary_7seg/planAhead_run_3" -part xc6slx16csg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Decoder_Binary_7Seg.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Decoder_Binary_7Seg.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top Decoder_Binary_7Seg $srcset
add_files [list {Decoder_Binary_7Seg.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx16csg324-3
