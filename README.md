tic-tac-toe
===========

A simple incomplete 2-player tic-tac-toe game that runs in the console.

Written originally as a possible vehicle or exercise for teaching test-driven
development.


## Requirements
Developed with Ruby 2.1.2. Appears to work on Ruby 1.9.3.


## Running
	$ ruby main.rb


## Example
	$ ruby main.rb 
	...
	...
	...
	
	Player X move - Enter coordinates (e.g. 0,2): 1,2
	----
	...
	..X
	...
	
	Player O move - Enter coordinates (e.g. 0,2): 0,0
	----
	O..
	..X
	...
	
	Player X move - Enter coordinates (e.g. 0,2): 0,1
	----
	OX.
	..X
	...
	
	Player O move - Enter coordinates (e.g. 0,2): 1,0
	----
	OX.
	O.X
	...
	
	Player X move - Enter coordinates (e.g. 0,2): 2,1
	----
	OX.
	O.X
	.X.
	
	Player O move - Enter coordinates (e.g. 0,2): 2,0
	----
	OX.
	O.X
	OX.
	Player O wins


## Known Issues
* Entering invalid coordinates (whether a coordinate outside the board or a
  value that isn't a coordinate) causes an exception and exits immediately.
* Game does not check for a tie


## License
Licensed under the MIT License. See the included LICENSE file.
