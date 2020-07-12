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
var adj;
if(argument2==true){
	for(var i; i < array_length_1d(adjlist); i++){
		adj = BoardGetTile(prBoardGetCoord(argument3,argument4)[0], prBoardGetCoord(argument3,argument4)[1]);
		if(adj == -1){
			
		}else if(adj.temp == argument1.carnivores[| argument1].temp_pref && adj.moist == argument1.carnivores[| argument1].moist_pref){
			ds_list_add(listick, adjlist[i]);
			ticker++}
	}
	if(ds_list_size ==0){}
	else{
		var newtile = listick[| irandom(ticker)];
		ds_list_add(BoardGetTile(newtile[0], newtile[1]).carnivores[| argument0]);
		ds_list_delete(argument1.carnivores, argument0);
		}
	ds_list_destroy(adjlist);
	
} else {
	for(var i; i < array_length_1d(adjlist); i++){
		adj = BoardGetTile(prBoardGetCoord(argument3,argument4)[0], prBoardGetCoord(argument3,argument4)[1]);
			if(adj == -1){

			}else if(adj.temp == argument1.herbivores[| argument0] && adj.moist == argument1.carnivores[| argument1].moist_pref && adj.capacity >= ds_list_size(adj.herbivores)){
			ds_list_add(listick, adjlist[i]);
			ticker++}
	}
		if(ds_list_size ==0){}
		else{
			var newtile = listick[| irandom(ticker)];
			ds_list_add(BoardGetTile(newtile[0], newtile[1]).carnivores[| argument0]);
			ds_list_delete(argument1.carnivores, argument0);
		}
	ds_list_destroy(adjlist);
}