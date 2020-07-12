/// AnimalSort(animallist)
/// @param animallist

var kars = ds_map_create();
var mappedList = ds_list_create();
var holder;
for (var i=0;i<ds_list_size(argument0); i++){
	holder = argument0[| i].str + random(.75)
	ds_map_add(kars, holder, argument0[| i]);
	ds_list_add(mappedList, holder);
}
ds_list_sort(mappedList, false);
for (var i=0;i<ds_list_size(argument0); i++){
	ds_list_set(argument0, i, ds_map_find_value(kars, mappedList[| i]));
}