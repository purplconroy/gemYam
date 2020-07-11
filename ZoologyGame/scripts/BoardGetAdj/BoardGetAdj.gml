/// BoardSet(itemQ, itemR)
/// @description BoardSet(itemQ, itemR, value)
/// @param itemQ
/// @param itemR

//returns and array of coordinates of adjacent tiles (coords are arrays), if invalid, coordinate array will have -1 for value.

var array = [
	prBoardGetCoord(argument0-1, argument1-1),
	prBoardGetCoord(argument0, argument1-1),
	prBoardGetCoord(argument0+1, argument1),
	prBoardGetCoord(argument0+1, argument1+1),
	prBoardGetCoord(argument0, argument1+1),
	prBoardGetCoord(argument0-1, argument1)
];
return array;