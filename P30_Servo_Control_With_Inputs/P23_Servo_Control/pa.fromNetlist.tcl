
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name P22_UKStopLight -dir "D:/ProySisDigAva/P22_UKStopLight/planAhead_run_1" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/ProySisDigAva/P22_UKStopLight/UKStopLight.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/ProySisDigAva/P22_UKStopLight} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "UKStopLight.ucf" [current_fileset -constrset]
add_files [list {UKStopLight.ucf}] -fileset [get_property constrset [current_run]]
link_design
