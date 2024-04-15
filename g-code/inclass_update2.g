(set current position as origin)
G92 X0 Y0 Z0

(move x to 250, pause, return)
G0 X250
G4 S1
G0 X0

(move y to 150, pause, return)
G0 Z150
G4 S1
G0 Z0

(move x to 250 and y to 150 simul., pause, return)
G0 X250 Z150
G4 S1
G0 X0 Z0


