
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name P19a_Serial_Comm -dir "D:/ProySisDigAva/P19a_Serial_Comm/planAhead_run_1" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/ProySisDigAva/P19a_Serial_Comm/Serial_Comm.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/ProySisDigAva/P19a_Serial_Comm} }
set_param project.pinAheadLayout  yes
set_param project.paUcfFile  "Serial_Comm.ucf"
add_files "Serial_Comm.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
