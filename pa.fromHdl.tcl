
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name JK -dir "D:/szdl/JK/planAhead_run_2" -part xc7a100tfgg484-2L
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "JK.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {JK.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top JK $srcset
add_files [list {JK.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc7a100tfgg484-2L
