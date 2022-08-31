
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name JK -dir "D:/szdl/JK/planAhead_run_1" -part xc7a100tfgg484-2L
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/szdl/JK/JK.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/szdl/JK} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "JK.ucf" [current_fileset -constrset]
add_files [list {JK.ucf}] -fileset [get_property constrset [current_run]]
link_design
