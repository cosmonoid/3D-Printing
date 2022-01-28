; Ender 3 Custom Start G-code
G92 E0 ; Reset Extruder
G28 Z ; Home Z first
G29 L0 ; Load mesh #0
G29 J ; UBL load mesh and tilt 3 points
G28 XY ; Home XY, so the nozzle will stay outside the bed when heating up
M140 S{material_bed_temperature_layer_0} ; start heating the bed to what is set in Cura
M104 S{material_print_temperature_layer_0} T0 ; start heating T0 to what is set in Cura
M190 S{material_bed_temperature_layer_0} ; continue heating but wait till heated
M109 S{material_print_temperature_layer_0} T0 ; continue heating but wait till heated


;G29 ; Create new mesh
;M420 S1 ; Enable mesh leveling

G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X0.1 Y20 Z0.3 F5000.0 ; Move to start position
G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line
G1 X0.4 Y200.0 Z0.3 F5000.0 ; Move to side a little
G1 X0.4 Y20 Z0.3 F1500.0 E30 ; Draw the second line
G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X5 Y20 Z0.3 F5000.0 ; Move over to prevent blob squish
