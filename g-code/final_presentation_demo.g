(Home X -> Y -> Z axes)
G28 X
G28 Z
G28 Y

(BEGIN TUBE 1)
(Move to Diluent, draw up 1 ml)
G0 X189 Z169 F2200
G0 Y13 F800
G0 E323.8 F3000
G0 Y90 F800

(Move to T1, dispense)
G0 X82.2 Z133.3 F2200
G0 Y40 F800
G0 E0 F3000

(Lower for Sip and Spit)
G0 Y20 F500

(Sip and Spit x2 Mix)
G0 E323.8 F6000
G0 E0 F6000
G0 E323.8 F6000
G0 E0 F6000

(Extract 1ml, raise)
G0 E323.8 F6000
G0 Y90 F800

(Move to C1, dispense, raise)
G0 X301 Z181.3 F2200
G0 Y18 F800
G0 E0 F3000
G0 Y90 F800

(Move to Wash beaker)
G0 X193 Z43 F2200
G0 Y5 F800

(Sip and Spit x2)
G0 E323.8 F6000
G0 E0 F6000
G0 E323.8 F6000
G0 E0 F6000

(Raise to Neutral)
G0 Y90 F800
(END TUBE 1)

(Home X -> Y -> Z axes)
G28 X
G28 Z
G28 Y