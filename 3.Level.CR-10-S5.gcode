;Rev 1.0 Initial Release For Cr-10-S5
;All the "orientations" here are based off of the printer facing you with the extruder closest to you and the Z axis on the left
M300 S2000 P1000 ;Make buzzer sound to notify of the beginning  of the leveling process	"S" is the frequency of the buzzer	"P" is duration in milliseconds

M117 Starting. ;Show message on screen
G4S5 ;Wait for 5 seconds, mostly so it gives you some time to acknowledge it 
M117 Front left corner. ;Show message on screen
G28 ;Home all axes
G4 S20 ;Wait at that position for 20 seconds
M300 S2000 P1000 ;Warns you about there only being 10 seconds left to level your bed 
G4 S10 ;Waits the remaining 10 seconds
M117 Front right corner. ;Show message on screen
G1 Z10 ;Move the Z axis 10 mm up
G1 Y0 X500 ;Move to the front right corner
G0 Z0 ;Move the Z axis to the "Home" position 
G4 S20 ;Wait at that position for 20 seconds
M300 S2000 P1000 ;Warns you about there only being 10 seconds left to level your bed 
G4 S10 ;Waits the remaining 10 seconds
M117 Rear right corner. ;Show message on screen
G1 Z10 ;Move the Z axis 10 mm up
G1 Y500 X500 ;Move to the rear right corner
G0 Z0 ;Move the Z axis to the "Home" position 
G4 S20 ;Wait at that position for 20 seconds
M300 S2000 P1000 ;Warns you about there only being 10 seconds left to level your bed 
G4 S10 ;Waits the remaining 10 seconds
M117 Rear left corner. ;Show message on screen
G1 Z10 ;Move the Z axis 10 mm up
G1 Y500 X0 ;Move to the rear left corner
G0 Z0 ;Move the Z axis to the "Home" position 
G4 S20 ;Wait at that position for 20 seconds
M300 S2000 P1000 ;Warns you about there only being 10 seconds left to level your bed 
G4 S10 ;Waits the remaining 10 seconds
M117 Center. ;Show message on screen
G1 Z10 ;Move the Z axis 10 mm up
G1 Y250 X250 ;Move to the center
G0 Z0 ;Move the Z axis to the "Home" position 
G4 S5 ;Wait at that position for 5 seconds
M300 S2000 P1000 ;Warns you about there only being 5 seconds left to check the level at the center
G4 S5 ;Waits the remaining 5 seconds
M117 Front left corner. ;Show message on screen
G1 Z10 ;Move the Z axis 10 mm up
G28 ;Moves home
M117 Done. ;Show message on screen