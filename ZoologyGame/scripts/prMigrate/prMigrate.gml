/// prMigrate(index,tile, type, q, r)
/// @param index
/// @param tile
/// @param type
	// true is carnivore false is herbivore
/// @param q
/// @param r

var adjlist = BoardGetAdj(argument3, argument4);
var ticker = 0;
var listick = ds_list_create();
if(argument2==true){
	for(var i; i < array_length_1d(adjlist); i++){
		if(BoardGetTile(prBoardGetCoord[0], prBoardGetCoord[1]).temp == argument1.carnivores[| argument1].temp_pref &&BoardGetTile(prBoardGetCoord[0], prBoardGetCoord[1]).moist == argument1.carnivores[| argument1].moist_pref){
			ds_list_add(listick, adjlist[i]);
			ticker++}
	}
	var newtile = listick[| irandom(ticker)];
	ds_list_destroy(adjlist);
	ds_list_add(BoardGetTile(newtile[0], newtile[1]).carnivores[| argument0]);
	ds_list_delete(argument1.carnivores, argument0);
	
} else {
	for(var i; i < array_length_1d(adjlist); i++){
		if(BoardGetTile(prBoardGetCoord[0], prBoardGetCoord[1]).temp == argument1.herbivores[| argument0] &&BoardGetTile(prBoardGetCoord[0], prBoardGetCoord[1]).moist == argument1.carnivores[| argument1].moist_pref && BoardGetTile(prBoardGetCoord[0], prBoardGetCoord[1]).capacity >= ds_list_size(BoardGetTile(prBoardGetCoord[0], prBoardGetCoord[1]).herbivores)){
			ds_list_add(listick, adjlist[i]);
			ticker++}
	}
	var newtile = listick[| irandom(ticker)];
	ds_list_destroy(adjlist);
	ds_list_add(BoardGetTile(newtile[0], newtile[1]).herbivores[| argument0]);
	ds_list_delete(argument1.herbivores, argument0)
}