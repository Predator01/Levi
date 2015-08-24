
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name One_Bit_Full_Adder -dir "D:/ProySisDigAva/P00_FullAdder/One_Bit_Full_Adder/planAhead_run_5" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/ProySisDigAva/P00_FullAdder/One_Bit_Full_Adder/Full_Adder_Bit.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/ProySisDigAva/P00_FullAdder/One_Bit_Full_Adder} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Full_Adder_Bit.ucf" [current_fileset -constrset]
add_files [list {Full_Adder_Bit.ucf}] -fileset [get_property constrset [current_run]]
link_design
