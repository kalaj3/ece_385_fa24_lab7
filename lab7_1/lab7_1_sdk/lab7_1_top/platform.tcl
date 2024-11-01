# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\jkali\ece385\lab7\lab7_1\lab7_1_sdk\lab7_1_top\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\jkali\ece385\lab7\lab7_1\lab7_1_sdk\lab7_1_top\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {lab7_1_top}\
-hw {C:\Users\jkali\ece385\lab7\lab7_1\lab7_1_top.xsa}\
-out {C:/Users/jkali/ece385/lab7/lab7_1/lab7_1_sdk}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {lab7_1_top}
platform generate -quick
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
