(Home X -> Y -> Z axes)
G0 X14.10 Z3
G0 Y116.70 

(Move to water, draw up 1 ml)
G0 X181 Z40 F2200
G0 Y25 F800
G0 E600 F6000
G0 Y119 F800

(Move to Tube 1, dispense)
G0 X158 Z162 F2200
G0 Y30 F800
G0 E0 F6000
G0 Y119 F800

(Move to Dye, Draw up 1ml)
G0 X97 Z41 F2200
G0 Y7 F800
G0 E600 F6000
G0 Y119 F800

(Move to Tube 2, dispense)
G0 X78 Z163 F2200
G0 Y30 F800
G0 E0 F6000
G0 Y119 F800

(Move to Bleach Wash, wash 5x)
G0 X37 Z40 F2200
G0 Y7 F800
G0 E600 F6000
G0 E0 F6000
G0 E600 F6000
G0 E0 F6000
G0 E600 F6000
G0 E0 F6000
G0 E600 F6000
G0 E0 F6000
G0 E600 F6000
G0 E0 F6000
G0 Y119 F800

(Move to water, draw up 1 ml)
G0 X181 Z40 F2200
G0 Y25 F800
G0 E600 F6000
G0 Y119 F800

(Move to Tube 3, dispense)
G0 X21 Z164 F2200
G0 Y30 F800
G0 E0 F6000
G0 Y119 F800

(Home X -> Y -> Z axes)
G0 X14.10 Z3
G0 Y116.70
