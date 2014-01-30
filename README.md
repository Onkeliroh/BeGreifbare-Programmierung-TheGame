BegreifbareGame
===============


1. Datapackage
--------------
	- every package from the arduino to the computer needs to be exactly one byte
	  long
	- each byte represents the input of one player interface
	- each byte needs to be, by default, 'empty' -> contains only 0 bits
	- the first bit determines whether it a package from palyer 1 or 2
		- if the first bit (index = 0) is not set the package belongs to player 1
		- if the fist bit (index = 0 )is set the package belongs to player 2
	
	- the states of the 'buttons' is represented with
		- ON represented by a set bit
		- OFF represented by a not set bit
	- the last bit (index = 7) represents the state of the preassure plate 
	- index 6 represnets the pinky
	- index 5 represents the ring finger
	- index 4 represents the middle finger
	- index 3 represents the index finger

	-------------------------------------------------------------------------
	|   0  |1|2|	   3			|		   4			|		  5			|	 6	|				7				|
	-------------------------------------------------------------------------
	|player|-|-|index finger|middle finger|ring finger|pinky|preassure plate|
  -------------------------------------------------------------------------
