# VideoSwitch
VideoSwitch sources (PIC + Schematic)
This project is a VideoSwitch for retro devices (that uses SCART/Composite) and is based on a mainboard composed by a PIC microcontroller, a main switch/selector and eight multiplexer, and a daughterboard (to be designed) to add eight more ports (up to two for a total of 24 inputs, not guaranteed until I'll produce a prototype for the right tests).
On the mainboard can be connected an 8x2 LCD character display (or biggher by modifying the firmware), two buttons for the input port selection and an IR receiver (not implemented yet firmware side, need to write the NEC IR library).
The firmware is in MikroBASIC (yes, I'm lazy and this language isn't the best for microcontrollers, I know).
Find out more on http://blog.jacksoftlabs.com/digital-video-switch-for-retro-devices/
