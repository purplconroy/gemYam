/// BoardSet(itemQ, itemR)
/// @description BoardSet(itemQ, itemR)
/// @param itemQ
/// @param itemR

var ItemX, ItemY;
ItemX = argument0 + oBoard.qOffset;
ItemY = argument1 + oBoard.rOffset;

if(is_undefined(ds_grid_get(oBoard.hexgrid,ItemX,ItemY)))
{
	return -1;
}
else
{
	var array = [ItemX, ItemY];
	return array;
}