
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name PF_Robot_Sumo -dir "D:/ProySisDigAva/Levi/PF_Robot_Sumo/planAhead_run_4" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/ProySisDigAva/Levi/PF_Robot_Sumo/Top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/ProySisDigAva/Levi/PF_Robot_Sumo} }
set_property target_constrs_file "Robot_Sumo.ucf" [current_fileset -constrset]
add_files [list {Robot_Sumo.ucf}] -fileset [get_property constrset [current_run]]
link_design
