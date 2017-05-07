# TCL File Generated by Component Editor 15.1
# Wed Feb 03 02:22:31 GMT 2016
# DO NOT MODIFY


# 
# post "post" v1.0
#  2016.02.03.02:22:31
# 
# 

# 
# request TCL package from ACDS 15.1
# 
package require -exact qsys 15.1


# 
# module post
# 
set_module_property DESCRIPTION ""
set_module_property NAME post
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP ip_frame
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME post
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL post
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file control_out.v VERILOG PATH control_out.v
add_fileset_file video_out.v VERILOG PATH video_out.v
add_fileset_file post.v VERILOG PATH post.v TOP_LEVEL_FILE
add_fileset_file flow_monitor.v VERILOG PATH flow_monitor.v

add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL post
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property SIM_VERILOG ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file control_out.v VERILOG PATH control_out.v
add_fileset_file video_out.v VERILOG PATH video_out.v
add_fileset_file post.v VERILOG PATH post.v
add_fileset_file flow_monitor.v VERILOG PATH flow_monitor.v


# 
# parameters
# 
add_parameter BITWIDTH INTEGER 32
set_parameter_property BITWIDTH DEFAULT_VALUE 32
set_parameter_property BITWIDTH DISPLAY_NAME BITWIDTH
set_parameter_property BITWIDTH TYPE INTEGER
set_parameter_property BITWIDTH UNITS None
set_parameter_property BITWIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property BITWIDTH HDL_PARAMETER true
add_parameter FIFO_DEPTH INTEGER 16
set_parameter_property FIFO_DEPTH DEFAULT_VALUE 16
set_parameter_property FIFO_DEPTH DISPLAY_NAME FIFO_DEPTH
set_parameter_property FIFO_DEPTH TYPE INTEGER
set_parameter_property FIFO_DEPTH UNITS None
set_parameter_property FIFO_DEPTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property FIFO_DEPTH HDL_PARAMETER true
add_parameter ALMOST_FULL_DEPTH INTEGER 14
set_parameter_property ALMOST_FULL_DEPTH DEFAULT_VALUE 14
set_parameter_property ALMOST_FULL_DEPTH DISPLAY_NAME ALMOST_FULL_DEPTH
set_parameter_property ALMOST_FULL_DEPTH TYPE INTEGER
set_parameter_property ALMOST_FULL_DEPTH UNITS None
set_parameter_property ALMOST_FULL_DEPTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property ALMOST_FULL_DEPTH HDL_PARAMETER true
add_parameter DEPTH_WIDTH INTEGER 4
set_parameter_property DEPTH_WIDTH DEFAULT_VALUE 4
set_parameter_property DEPTH_WIDTH DISPLAY_NAME DEPTH_WIDTH
set_parameter_property DEPTH_WIDTH TYPE INTEGER
set_parameter_property DEPTH_WIDTH UNITS None
set_parameter_property DEPTH_WIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property DEPTH_WIDTH HDL_PARAMETER true
add_parameter PARALLEL_BITWIDTH INTEGER 0
set_parameter_property PARALLEL_BITWIDTH DEFAULT_VALUE 0
set_parameter_property PARALLEL_BITWIDTH DISPLAY_NAME PARALLEL_BITWIDTH
set_parameter_property PARALLEL_BITWIDTH TYPE INTEGER
set_parameter_property PARALLEL_BITWIDTH UNITS None
set_parameter_property PARALLEL_BITWIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property PARALLEL_BITWIDTH HDL_PARAMETER true


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point reset_sink
# 
add_interface reset_sink reset end
set_interface_property reset_sink associatedClock clock
set_interface_property reset_sink synchronousEdges DEASSERT
set_interface_property reset_sink ENABLED true
set_interface_property reset_sink EXPORT_OF ""
set_interface_property reset_sink PORT_NAME_MAP ""
set_interface_property reset_sink CMSIS_SVD_VARIABLES ""
set_interface_property reset_sink SVD_ADDRESS_GROUP ""

add_interface_port reset_sink rst reset Input 1


# 
# connection point avalon_streaming_source
# 
add_interface avalon_streaming_source avalon_streaming start
set_interface_property avalon_streaming_source associatedClock clock
set_interface_property avalon_streaming_source associatedReset reset_sink
set_interface_property avalon_streaming_source dataBitsPerSymbol 8
set_interface_property avalon_streaming_source errorDescriptor ""
set_interface_property avalon_streaming_source firstSymbolInHighOrderBits true
set_interface_property avalon_streaming_source maxChannel 0
set_interface_property avalon_streaming_source readyLatency 1
set_interface_property avalon_streaming_source ENABLED true
set_interface_property avalon_streaming_source EXPORT_OF ""
set_interface_property avalon_streaming_source PORT_NAME_MAP ""
set_interface_property avalon_streaming_source CMSIS_SVD_VARIABLES ""
set_interface_property avalon_streaming_source SVD_ADDRESS_GROUP ""

add_interface_port avalon_streaming_source source_data data Output BITWIDTH
add_interface_port avalon_streaming_source source_valid valid Output 1
add_interface_port avalon_streaming_source source_sop startofpacket Output 1
add_interface_port avalon_streaming_source source_eop endofpacket Output 1
add_interface_port avalon_streaming_source source_ready ready Input 1


# 
# connection point control_sink
# 
add_interface control_sink avalon_streaming end
set_interface_property control_sink associatedClock clock
set_interface_property control_sink associatedReset reset_sink
set_interface_property control_sink dataBitsPerSymbol 36
set_interface_property control_sink errorDescriptor ""
set_interface_property control_sink firstSymbolInHighOrderBits true
set_interface_property control_sink maxChannel 0
set_interface_property control_sink readyLatency 0
set_interface_property control_sink ENABLED true
set_interface_property control_sink EXPORT_OF ""
set_interface_property control_sink PORT_NAME_MAP ""
set_interface_property control_sink CMSIS_SVD_VARIABLES ""
set_interface_property control_sink SVD_ADDRESS_GROUP ""

add_interface_port control_sink control_data data Input 36
add_interface_port control_sink control_valid valid Input 1


# 
# connection point video_sink
# 
add_interface video_sink avalon_streaming end
set_interface_property video_sink associatedClock clock
set_interface_property video_sink associatedReset reset_sink
set_interface_property video_sink dataBitsPerSymbol 8
set_interface_property video_sink errorDescriptor ""
set_interface_property video_sink firstSymbolInHighOrderBits true
set_interface_property video_sink maxChannel 0
set_interface_property video_sink readyLatency 1
set_interface_property video_sink ENABLED true
set_interface_property video_sink EXPORT_OF ""
set_interface_property video_sink PORT_NAME_MAP ""
set_interface_property video_sink CMSIS_SVD_VARIABLES ""
set_interface_property video_sink SVD_ADDRESS_GROUP ""

add_interface_port video_sink sink_video_data data Input BITWIDTH
add_interface_port video_sink sink_video_ready ready Output 1
add_interface_port video_sink sink_video_valid valid Input 1


# 
# connection point flow_result
# 
add_interface flow_result conduit end
set_interface_property flow_result associatedClock clock
set_interface_property flow_result associatedReset reset_sink
set_interface_property flow_result ENABLED true
set_interface_property flow_result EXPORT_OF ""
set_interface_property flow_result PORT_NAME_MAP ""
set_interface_property flow_result CMSIS_SVD_VARIABLES ""
set_interface_property flow_result SVD_ADDRESS_GROUP ""

add_interface_port flow_result flow_result flow_result Output 3

