
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name P03_Decoder_Binary_7seg -dir "D:/ProySisDigAva/Levi/P03_Decoder_Binary_7seg/planAhead_run_1" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/ProySisDigAva/Levi/P03_Decoder_Binary_7seg/Decoder_Binary_7Seg.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/ProySisDigAva/Levi/P03_Decoder_Binary_7seg} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Decoder_Binary_7Seg.ucf" [current_fileset -constrset]
add_files [list {Decoder_Binary_7Seg.ucf}] -fileset [get_property constrset [current_run]]
link_design
