
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name P21_Mustang_Tail_Lights_Controller_FSM -dir "D:/ProySisDigAva/P21_Mustang_Tail_Lights_Controller_FSM/planAhead_run_1" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/ProySisDigAva/P21_Mustang_Tail_Lights_Controller_FSM/Mustang_Tail_Lights_Controller.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/ProySisDigAva/P21_Mustang_Tail_Lights_Controller_FSM} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Mustang_Tail_Lights_Controller.ucf" [current_fileset -constrset]
add_files [list {Mustang_Tail_Lights_Controller.ucf}] -fileset [get_property constrset [current_run]]
link_design
