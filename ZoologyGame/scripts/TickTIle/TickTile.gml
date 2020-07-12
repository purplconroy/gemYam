///TickTile(tile, q , r, migraqueue)
///@param tile
///@param q
///@param r
///@param migraqueue

AnimalSort(argument0.herbivores);
AnimalSort(argument0.carnivores);
var herbtick = ds_list_size(argument0.herbivores);
var carntick = ds_list_size(argument0.carnivores);
for (var i=0; i< carntick; i++){
	argument0.carnivores[| i].fullness--; //lever for carnivore balancing
	var strongk = prFindStrongest(argument0.carnivores[| i],argument0);
	if(strongk[1] == -1 && argument0.carnivores[| i].fullness > 0){
		ds_queue_enqueue(argument3, [i, argument0, true, argument1, argument2]);
//		 prMigrate(i, argument0, true, argument1, argument2);
	}else if(argument0.carnivores[| i].fullness <= 0){
		ds_list_delete(i, argument0.carnivores[| i]);
		i--;
	} else if(strongk[2] == false){
		argument0.carnivores[| i].fullness += 2;
		ds_list_delete(argument0.herbivores, strongk[1]);
		if(argument0.carnivores[| i].fullness >= argument0.carnivores[| i].maxfullness){
			argument0.carnivores[| i].fullness = round(argument0.carnivores[| i].fullness / 2);
			var newcarn = instance_create_layer(0,0, "Instances", oCarn);
			AnimalStrSet(newcarn, argument0.carnivores[| i].str);
			AnimalTempSet(newcarn, argument0.carnivores[| i].temp_pref);
			AnimalMoistSet(newcarn, argument0.carnivores[| i].moist_pref);
			ds_list_add(argument0.carnivores, newcarn);
		}
	}else{
		argument0.carnivores[| i].fullness += 2;
		ds_list_delete(argument0.carnivores, strongk[1]);
		carntick--;
		if(argument0.carnivores[| i].fullness >= argument0.carnivores[| i].maxfullness){
			argument0.carnivores[| i].fullness = round(argument0.carnivores[| i].fullness / 2);
			var newcarn = instance_create_layer(0,0, "Instances", oCarn);
			AnimalStrSet(newcarn, argument0.carnivores[| i].str);
			AnimalTempSet(newcarn, argument0.carnivores[| i].temp_pref);
			AnimalMoistSet(newcarn, argument0.carnivores[| i].moist_pref);
			ds_list_add(argument0.carnivores, newcarn);
	}
	}
}
for (var i=0; i< herbtick; i++){
	argument0.herbivores[| i].growth++;
	if(ds_list_size(argument0.herbivores) < argument0.capacity && argument0.herbivores[| i].growth >= argument0.herbivores[| i].growth_timer){
		var newherb = instance_create_layer(0,0, "Instances", oHerb);
		AnimalStrSet(newherb, argument0.herbivores[| i].str);
		AnimalTempSet(newherb, argument0.herbivores[| i].temp_pref);
		AnimalMoistSet(newherb, argument0.herbivores[| i].moist_pref);
		HerbGrowthTimerSet(newherb, argument0.herbivores[| i].growth_timer);
		ds_list_add(argument0.herbivores, newherb);
		argument0.herbivores[| i].growth = 0;
	} else if (ds_list_size(argument0.herbivores) == argument0.capacity){
		ds_queue_enqueue(argument3, [i, argument0,false, argument1, argument2]);
//		prMigrate(i, argument0, false, argument1, argument2);
	}
}

