M302 ; disable extruder temperature minimum
G28 ; home x, y, and z
G0 X81 Y102 ; diluent coordinates
G0 Z220 ; lower needle
G0 E300 ; extrude by max 300 at once
G0 E600
G0 E660 ; take up 0.5 mL total
G0 Z5 ; raise needle
G0 X2 Y67 ; first sample coordinates
G0 Z60 ; lower needle just above sample
G0 E360
G0 E60
G0 E-200 ; extrude further to ensure all of diluent is expelled
G0 Z100 ; lower needle into sample
G0 E100 ; start mixing
G0 Z60
G0 E-200
G0 E-300
G0 Z100
G0 E0
G0 Z60
G0 E-300
G0 E-400
G0 Z100 ; end of mixing
G0 E-100 ; take up sample
G0 E200
G0 E500
G0 Z5 ; raise needle
G0 X29 Y212 ; first cuvette coordinates
G0 Z130 ; lower needle
G0 E200 ; dispense sample
G0 E-100
G0 E-400
G0 E-500
G0 Z100 ; raise needle
G0 X62 Y77 ; soap wash coordinates
G0 Z220 ; lower needle
G0 E-200 ; begin rinsing with soap wash
G0 E100
G0 E400
G0 E600
G0 Z180
G0 E400
G0 E100
G0 E-200
G0 E-500
G0 Z220
G0 E-200
G0 E100
G0 E400
G0 E600
G0 Z180
G0 E300
G0 E0
G0 E-300
G0 E-600
G0 Z140 ; end soap wash
G0 X100 Y77 ; water coordinates
G0 Z220 ; lower needle
G0 E-300 ; begin rinsing with water
G0 E0
G0 E300
G0 E600
G0 Z180
G0 E300
G0 E0
G0 E-300
G0 E-600
G0 E-700
G0 Z220
G0 E-400
G0 E-100
G0 E200
G0 E500
G0 Z180
G0 E200
G0 E-100
G0 E-400
G0 E-700
G0 E-800
G0 Z140 ; end rinsing
G0 E-500
G0 E-200
G0 E0 ; raise plunger to E0 before next sample
G0 X81 Y102 ; diluent coordinates
G0 Z220
G0 E300
G0 E600
G0 E660 ; take up 0.5 mL
G0 Z5
G0 X2 Y90 ; second sample coordinates
G0 Z60
G0 E360
G0 E60
G0 E-200 ; dispense diluent
G0 Z5