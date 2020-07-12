/// newAnimal(type, q, r, str,temp_pref, moist_pref, reproduction_value)
/// @param type
	//true carnivore, false herbivore
/// @param q
/// @param r
/// @param str
/// @param temp_pref
/// @param moist_pref
/// @param reproduction_value

if(argument0=true){
		var newcarn = instance_create_layer(0,0, "Instances", oCarn);
		AnimalStrSet(newcarn, argument3);
		AnimalTempSet(newcarn, argument4);
		AnimalMoistSet(newcarn, argument5);
		CarnMaxFullnessSet(newcarn, argument6);
		ds_list_add(BoardGetTile(argument1,argument2).herbivores, newcarn);
}else{
		var newherb = instance_create_layer(0,0, "Instances", oCarn);
		AnimalStrSet(newherb, argument3);
		AnimalTempSet(newherb, argument4);
		AnimalMoistSet(newherb, argument5);
		CarnMaxFullnessSet(newherb, argument6);
		ds_list_add(BoardGetTile(argument1,argument2).carnivores, newherb);	
}