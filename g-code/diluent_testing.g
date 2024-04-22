(Home X -> Y -> Z axes)
G28 X
G28 Z
G28 Y

(BEGIN TUBE 1)

(Move to Diluent, draw up 1 ml)
G0 X176 Z197 F1600
G0 Y2 F500
G0 E647.5 F3000
G0 Y90

(Move to T1, dispense)
G0 X82.2 Z133.3 F1600
G0 Y40 F500
G0 E0 F3000
G0 Y90 F1000

(Move to Diluent, draw up 1 ml)
G0 X176 Z197 F1600
G0 Y2 F500
G0 E647.5 F3000
G0 Y90

(Move to T1, dispense)
G0 X82.2 Z133.3 F1600
G0 Y40 F500
G0 E0 F3000

(Lower for Sip and Spit)
G0 Y0 F500

(Sip and Spit x5 Mix)
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000

(Lower, Extract 1.3ml, raise)
G0 Y0 F100
G0 E675 F6000
G0 Y90 F500

(Move to C1, dispense, raise)
G0 X301 Z181.3 F1600
G0 Y18 F500
G0 E0 F3000
G0 Y90

(Move to Wash beaker)
G0 X180 Z75 F1600
G0 Y0 F500

(Sip and Spit x3)
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000

(Raise to Neutral)
G0 Y90
(END TUBE 1)
(------------)
(BEGIN TUBE 2)

(Move to Diluent, draw up 1 ml)
G0 X176 Z197 F1600
G0 Y2 F500
G0 E647.5 F3000
G0 Y90

(Move to T2, dispense)
G0 X82.2 Z156.3 F1600
G0 Y40 F500
G0 E0 F3000
G0 Y90

(Move to Diluent, draw up 1 ml)
G0 X176 Z197 F1600
G0 Y2 F500
G0 E647.5 F3000
G0 Y90

(Move to T2, dispense)
G0 X82.2 Z156.3 F1600
G0 Y40 F500
G0 E0 F3000

(Lower for Sip and Spit)
G0 Y0 F500

(Sip and Spit x5 Mix)
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000

(Lower, Extract 1.3ml, raise)
G0 Y0 F100
G0 E675 F6000
G0 Y90 F500

(Move to C2, dispense, raise)
G0 X301 Z161.3 F1600
G0 Y18 F500
G0 E0 F3000
G0 Y90

(Move to Wash beaker)
G0 X180 Z75 F1600
G0 Y0 F500

(Sip and Spit x3)
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000

(Raise to Neutral)
G0 Y90
(END TUBE 2)
(------------)
(BEGIN TUBE 3)

(Move to Diluent, draw up 1 ml)
G0 X176 Z197 F1600
G0 Y2 F500
G0 E647.5 F3000
G0 Y90

(Move to T3, dispense)
G0 X80.5 Z178.7 F1600
G0 Y40 F500
G0 E0 F3000
G0 Y90

(Move to Diluent, draw up 1 ml)
G0 X176 Z197 F1600
G0 Y2 F500
G0 E647.5 F3000
G0 Y90

(Move to T3, dispense)
G0 X80.5 Z178.7 F1600
G0 Y40 F500
G0 E0 F3000

(Lower for Sip and Spit)
G0 Y0 F500

(Sip and Spit x5 Mix)
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000

(Lower, Extract 1.3ml, raise)
G0 Y0 F100
G0 E675 F6000
G0 Y90 F500

(Move to C3, dispense, raise)
G0 X301 Z141.3 F1600
G0 Y18 F500
G0 E0 F3000
G0 Y90

(Move to Wash beaker)
G0 X180 Z75 F1600
G0 Y0 F500

(Sip and Spit x3)
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000

(Raise to Neutral)
G0 Y90
(END TUBE 3)
(------------)
(BEGIN TUBE 4)

(Move to Diluent, draw up 1 ml)
G0 X176 Z197 F1600
G0 Y2 F500
G0 E647.5 F3000
G0 Y90

(Move to T4, dispense)
G0 X59.2 Z178.7 F1600
G0 Y40 F500
G0 E0 F3000
G0 Y90

(Move to Diluent, draw up 1 ml)
G0 X176 Z197 F1600
G0 Y2 F500
G0 E647.5 F3000
G0 Y90

(Move to T4, dispense)
G0 X59.2 Z178.7 F1600
G0 Y40 F500
G0 E0 F3000

(Lower for Sip and Spit)
G0 Y0 F500

(Sip and Spit x5 Mix)
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000

(Lower, Extract 1.3ml, raise)
G0 Y0 F100
G0 E675 F6000
G0 Y90 F500

(Move to C4, dispense, raise)
G0 X301 Z120.3 F1600
G0 Y18 F500
G0 E0 F3000
G0 Y90

(Move to Wash beaker)
G0 X180 Z75 F1600
G0 Y0 F500

(Sip and Spit x3)
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000

(Raise to Neutral)
G0 Y90
(END TUBE 4)
(------------)
(BEGIN TUBE 5)

(Move to Diluent, draw up 1 ml)
G0 X176 Z197 F1600
G0 Y2 F500
G0 E647.5 F3000
G0 Y90

(Move to T5, dispense)
G0 X59.2 Z154.9 F1600
G0 Y40 F500
G0 E0 F3000
G0 Y90

(Move to Diluent, draw up 1 ml)
G0 X176 Z197 F1600
G0 Y2 F500
G0 E647.5 F3000
G0 Y90

(Move to T5, dispense)
G0 X59.2 Z154.9 F1600
G0 Y40 F500
G0 E0 F3000

(Lower for Sip and Spit)
G0 Y0 F500

(Sip and Spit x5 Mix)
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000

(Lower, Extract 1.3ml, raise)
G0 Y0 F100
G0 E675 F6000
G0 Y90 F500

(Move to C5, dispense, raise)
G0 X301 Z99.3 F1600
G0 Y18 F500
G0 E0 F3000
G0 Y90

(Move to Wash beaker)
G0 X180 Z75 F1600
G0 Y0 F500

(Sip and Spit x3)
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000

(Raise to Neutral)
G0 Y90
(END TUBE 5)
(------------)
(BEGIN TUBE 6)

(Move to Diluent, draw up 1 ml)
G0 X176 Z197 F1600
G0 Y2 F500
G0 E647.5 F3000
G0 Y90

(Move to T6, dispense)
G0 X59.2 Z133.3 F1600
G0 Y40 F500
G0 E0 F3000
G0 Y90

(Move to Diluent, draw up 1 ml)
G0 X176 Z197 F1600
G0 Y2 F500
G0 E647.5 F3000
G0 Y90

(Move to T6, dispense)
G0 X59.2 Z133.3 F1600
G0 Y40 F500
G0 E0 F3000

(Lower for Sip and Spit)
G0 Y0 F500

(Sip and Spit x5 Mix)
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000

(Lower, Extract 1.3ml, raise)
G0 Y0 F100
G0 E675 F6000
G0 Y90 F500

(Move to C6, dispense, raise)
G0 X301 Z78.3 F1600
G0 Y18 F500
G0 E0 F3000
G0 Y90

(Move to Wash beaker)
G0 X180 Z75 F1600
G0 Y0 F500

(Sip and Spit x3)
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000
G0 E647.5 F6000
G0 E0 F6000

(Raise to Neutral)
G0 Y90
(END TUBE 6)

(Home X -> Y -> Z axes)
G28 X
G28 Z
G28 Y