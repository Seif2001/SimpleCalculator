
d
Command: %s
53*	vivadotcl23
write_bitstream -force main.bit2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
	xc7vx485t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
	xc7vx485t2default:defaultZ17-349h px? 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
?Unspecified I/O Standard: 34 out of 34 logical ports use I/O standard (IOSTANDARD) value 'DEFAULT', instead of a user assigned specific value. This may cause I/O contention or incompatibility with the board power or connectivity affecting performance, signal integrity or in extreme cases cause damage to the device or the components to which it is connected. To correct this violation, specify all I/O standards. This design will fail to generate a bitstream unless all logical ports have a user specified I/O standard value defined. To allow bitstream creation with unspecified I/O standard values (not recommended), use this command: set_property SEVERITY {Warning} [get_drc_checks NSTD-1].  NOTE: When using the Vivado Runs infrastructure (e.g. launch_runs Tcl command), add this command to a .tcl file and add that file as a pre-hook for write_bitstream step for the implementation run. Problem ports: %s.%s*DRC2?
 "+
buttons[3:0]buttons2default:default"7
enable_anodes[3:0]enable_anodes2default:default"#
ops[4:0]ops2default:default")
result[7:0]result2default:default"&
clk_100clk_1002default:default"B
display_result_switchdisplay_result_switch2default:default"2
enable_masterenable_master2default:default""
resetreset2default:default"L
show_display_result_switchshow_display_result_switch2default:default"<
show_enable_mastershow_enable_master2default:default"0
show_op0_addshow_op0_add2default:default"0
show_op1_subshow_op1_sub2default:default"2
show_op2_multshow_op2_mult2default:default"0
show_op3_divshow_op3_div2default:default"0
show_op4_powershow_op4_power2default:..."/
(the first 15 of 17 listed)2default:default2default:default2(
 DRC|Pin Planning2default:default8ZNSTD-1h px? 
?
?Unconstrained Logical Port: 33 out of 34 logical ports have no user assigned specific location constraint (LOC). This may cause I/O contention or incompatibility with the board power or connectivity affecting performance, signal integrity or in extreme cases cause damage to the device or the components to which it is connected. To correct this violation, specify all pin locations. This design will fail to generate a bitstream unless all logical ports have a user specified site LOC constraint defined.  To allow bitstream creation with unspecified pin locations (not recommended), use this command: set_property SEVERITY {Warning} [get_drc_checks UCIO-1].  NOTE: When using the Vivado Runs infrastructure (e.g. launch_runs Tcl command), add this command to a .tcl file and add that file as a pre-hook for write_bitstream step for the implementation run.  Problem ports: %s.%s*DRC2?
 "+
buttons[3:0]buttons2default:default"7
enable_anodes[3:0]enable_anodes2default:default"#
ops[4:0]ops2default:default")
result[7:0]result2default:default"&
clk_100clk_1002default:default"B
display_result_switchdisplay_result_switch2default:default"2
enable_masterenable_master2default:default""
resetreset2default:default"L
show_display_result_switchshow_display_result_switch2default:default"<
show_enable_mastershow_enable_master2default:default"0
show_op0_addshow_op0_add2default:default"2
show_op2_multshow_op2_mult2default:default"0
show_op3_divshow_op3_div2default:default"4
show_op4_powershow_op4_power2default:default"H
show_welcome_screen_switchshow_welcome_screen_switch2default:..."/
(the first 15 of 16 listed)2default:default2default:default2(
 DRC|Pin Planning2default:default8ZUCIO-1h px? 
?
?Missing CFGBVS and CONFIG_VOLTAGE Design Properties: Neither the CFGBVS nor CONFIG_VOLTAGE voltage property is set in the current_design.  Configuration bank voltage select (CFGBVS) must be set to VCCO or GND, and CONFIG_VOLTAGE must be set to the correct configuration voltage, in order to determine the I/O voltage support for the pins in bank 0.  It is suggested to specify these either using the 'Edit Device Properties' function in the GUI or directly in the XDC file using the following syntax:

 set_property CFGBVS value1 [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE value2 [current_design]
 #where value2 is the voltage provided to configuration bank 0

Refer to the device configuration user guide for more information.%s*DRC2(
 DRC|Pin Planning2default:default8ZCFGBVS-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2B
 ",

op/result0	
op/result02default:default2default:default2L
 "6
op/result0/A[29:0]op/result0/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2B
 ",

op/result0	
op/result02default:default2default:default2L
 "6
op/result0/B[17:0]op/result0/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2H
 "2
op/result0__0	op/result0__02default:default2default:default2R
 "<
op/result0__0/A[29:0]op/result0__0/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2H
 "2
op/result0__0	op/result0__02default:default2default:default2R
 "<
op/result0__0/B[17:0]op/result0__0/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
?PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2B
 ",

op/result0	
op/result02default:default2default:default2L
 "6
op/result0/P[47:0]op/result0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px? 
?
?PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2H
 "2
op/result0__0	op/result0__02default:default2default:default2R
 "<
op/result0__0/P[47:0]op/result0__0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px? 
?
?MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2B
 ",

op/result0	
op/result02default:default2default:default2L
 "6
op/result0/P[47:0]op/result0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px? 
?
?MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2H
 "2
op/result0__0	op/result0__02default:default2default:default2R
 "<
op/result0__0/P[47:0]op/result0__0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px? 
f
DRC finished with %s
1905*	planAhead2(
2 Errors, 9 Warnings2default:defaultZ12-3199h px? 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px? 
R
+Error(s) found during DRC. Bitgen not run.
1345*	planAheadZ12-1345h px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
812default:default2
122default:default2
672default:default2
32default:defaultZ4-41h px? 
Q

%s failed
30*	vivadotcl2#
write_bitstream2default:defaultZ4-43h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:132default:default2
00:00:092default:default2
2037.4532default:default2
47.7422default:defaultZ17-268h px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sun May  1 22:36:37 20222default:defaultZ17-206h px? 


End Record