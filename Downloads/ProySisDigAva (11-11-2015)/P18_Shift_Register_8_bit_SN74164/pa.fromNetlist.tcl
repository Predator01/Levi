
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name P18_Shift_Register_8_bit_SN74164 -dir "D:/ProySisDigAva/P18_Shift_Register_8_bit_SN74164/planAhead_run_1" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/ProySisDigAva/P18_Shift_Register_8_bit_SN74164/Shift_Register.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/ProySisDigAva/P18_Shift_Register_8_bit_SN74164} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Shift_Register.ucf" [current_fileset -constrset]
add_files [list {Shift_Register.ucf}] -fileset [get_property constrset [current_run]]
link_design
