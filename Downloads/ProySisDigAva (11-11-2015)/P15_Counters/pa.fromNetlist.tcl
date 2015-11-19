
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name P15_Counters -dir "D:/ProySisDigAva/P15_Counters/planAhead_run_1" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/ProySisDigAva/P15_Counters/Counters.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/ProySisDigAva/P15_Counters} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Counters.ucf" [current_fileset -constrset]
add_files [list {Counters.ucf}] -fileset [get_property constrset [current_run]]
link_design
