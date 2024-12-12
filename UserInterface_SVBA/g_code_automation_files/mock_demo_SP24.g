(For demo tubes need to have at least 2.5 ml of water and 1 ml of dilent will be added)
(Home X -> Y -> Z axes)
G28 X
G28 Z
G28 Y

(Move to Dye/Dilent, Draw up 1 ml, Syringe goes down to 45mL)
G0 X289 Z49 F2400
G0 Y15 F900
G0 E600 F3500
G0 Y121 F900

(BEGIN TUBE 1, should be filled with 2.5ml of water)
(Move to T1, dispense)
G0 X286 Z163 F2400
G0 Y73 F900
G0 E0 F3500
(Mixxing x2 and Extract 1ml)
G0 E323.8 F6000
G0 E0 F6000
G0 E323.8 F6000
G0 E0 F6000
G0 E600 F6000
G0 Y121 F900

(Move to C2, dispense)
G0 X232.9 Z111 F2400
G0 Y98 F900
G0 E0 F3500
G0 Y121 F900

(Move to Wash beaker and Wash x3)
G0 X233 Z49 F2400
G0 Y15 F900
G0 E323.8 F6000
G0 E0 F6000
G0 E323.8 F6000
G0 E0 F6000
G0 E323.8 F6000
G0 E0 F6000
G0 Y115 F900
(END TUBE 1)

(Home X -> Y -> Z axes)
G28 X
G28 Z
G28 Y
