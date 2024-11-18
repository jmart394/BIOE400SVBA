(Home X -> Y -> Z axes)
G28 X
G28 Z
G28 Y

(Move to water, draw up 1 ml)
G0 X181 Z40 F2200
G0 Y30 F800
G0 E600 F6000
G0 Y115 F800

(Move to Tube 1, dispense)
G0 X158 Z162 F2200
G0 Y28 F800
G0 E0 F6000
G0 Y115 F800

(Move to Dye, Draw up 1ml)
G0 X97 Z41 F2200
G0 Y10 F800
G0 E600 F6000
G0 Y115 F800

(Move to Tube 2, dispense)
G0 X78 Z159 F2200
G0 Y30 F800
G0 E0 F6000
G0 Y115 F800

(Move to Bleach Wash, wash 5x)
G0 X43 Z40 F2200
G0 Y13 F800
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
G0 Y115 F800

(Move to water, draw up 1 ml)
G0 X181 Z40 F2200
G0 Y30 F800
G0 E600 F6000
G0 Y115 F800

(Move to Tube 3, dispense)
G0 X21 Z158 F2200
G0 Y32 F800
G0 E0 F6000
G0 Y115 F800

(Home X -> Y -> Z axes)
G28 X
G28 Z
G28 Y
