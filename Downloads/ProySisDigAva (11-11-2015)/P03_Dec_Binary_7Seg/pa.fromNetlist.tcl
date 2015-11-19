
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name P03_Dec_Binary_7Seg -dir "D:/ProySisDigAva/P03_Dec_Binary_7Seg/planAhead_run_1" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/ProySisDigAva/P03_Dec_Binary_7Seg/Dec_Binary_7Seg.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/ProySisDigAva/P03_Dec_Binary_7Seg} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Dec_Binary_7Seg.ucf" [current_fileset -constrset]
add_files [list {Dec_Binary_7Seg.ucf}] -fileset [get_property constrset [current_run]]
link_design
