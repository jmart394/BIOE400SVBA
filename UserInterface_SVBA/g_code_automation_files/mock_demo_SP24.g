(For demo tubes need to have at least 2.5 ml of water and 1 ml of dilent will be added)
(Home X -> Y -> Z axes)
G28 X
G28 Z
G28 Y

(Move to Dye/Dilent, Draw up 1 ml, Syringe goes down to 45mL)
G0 X291 Z53 F2200
G0 Y15 F800
G0 E600 F3000
G0 Y115 F800

(BEGIN TUBE 1)
(Move to T1, dispense)
G0 X287 Z163 F2200
G0 Y73 F800
G0 E0 F3000

(Lower for Mixxing x2 and Extract 0.5ml)
G0 Y66 F500
G0 E323.8 F6000
G0 E0 F6000
G0 E323.8 F6000
G0 E0 F6000
G0 E323.8 F6000
G0 Y115 F800

(Move to C1, dispense, raise)
G0 X305 Z113 F2200
G0 Y86 F800
G0 E0 F3000
G0 Y115 F800

(Move to Wash beaker and Wash x3))
G0 X233 Z50 F2200
G0 Y15 F800
G0 E323.8 F6000
G0 E0 F6000
G0 E323.8 F6000
G0 E0 F6000
G0 E323.8 F6000
G0 E0 F6000
G0 Y115 F800
(END TUBE 1)

(Home X -> Y -> Z axes)
G28 X
G28 Z
G28 Y
