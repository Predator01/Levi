
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name P18_ServoControl -dir "D:/ProySisDigAva/P18a_ServoControl_Felipe_Santiago_Rafael/planAhead_run_1" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/ProySisDigAva/P18a_ServoControl_Felipe_Santiago_Rafael/ServoControl.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/ProySisDigAva/P18a_ServoControl_Felipe_Santiago_Rafael} }
set_param project.pinAheadLayout  yes
set_param project.paUcfFile  "ServoControl.ucf"
add_files "ServoControl.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
