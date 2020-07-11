/// BoardSet(itemQ, itemR, value)
/// @description BoardSet(itemQ, itemR, value)
/// @param itemQ
/// @param itemR
/// @param value

// ---
// sets the item at position x,y on the Board to the given value. Intended use it to place tile objects in grid.

// its 5:14 getting pretty tired. code might be buggy. double check it when u get some sleep isaac.

var ItemX, ItemY;
ItemX = argument0 + oBoard.qOffset;
ItemY = argument1 + oBoard.rOffset;

if (ItemX > ds_grid_width(oBoard.hexgrid) - 1)
{
	BoardAppendQ();
	ds_grid_set(oBoard.hexgrid, ItemX, ItemY,  argument2);
	return 1;
}

else if (ItemY > ds_grid_width(oBoard.hexgrid) - 1)
{
	BoardAppendR();
	ds_grid_set(oBoard.hexgrid, ItemX, ItemY,  argument2);
	return 1;
}

else if (ItemX < 0)
{
	BoardShiftQ();
	ds_grid_set(oBoard.hexgrid, ItemX, ItemY,  argument2);
	return 1;
}

else if (ItemY < 0)
{
	BoardShiftR();
	ds_grid_set(oBoard.hexgrid, ItemX, ItemY,  argument2);
	return 1;
}

return -1;

//butts