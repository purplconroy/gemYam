/// prFindStrongest(carnivore, tile)
/// @param carnivore
/// @param tile
var higheststr = 0;
var higheststrI = -1;
var carn = false;
for(var i = 0; i <ds_list_size(argument1.herbivores); i++){
	if(argument1.herbivores[| i].str < argument0.str && argument1.herbivores[| i].str > higheststr){
		higheststr=argument1.herbivores[| i].str;
		higheststrI= i;
	}
}
for(var i = 0; i <ds_list_size(argument1.carnivores); i++){
	if(argument1.herbivores[| i].str < argument0.str && argument1.carnivores[| i].str > higheststr){
		higheststr=argument1.carnivores[| i].str;
		higheststrI= i;
		carn= true;
	}
}

return [higheststr, higheststrI, carn]