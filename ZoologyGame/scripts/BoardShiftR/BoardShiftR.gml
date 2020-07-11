oBoard.rOffset += 1;

ds_grid_resize(oBoard.hexgrid, ds_grid_width(oBoard.hexgrid), ds_grid_height(oBoard.hexgrid) + 1);

var q, r; //these should be instance variables and be yellow, currently purple. might be bug.
for (r = (ds_grid_height(oBoard.hexgrid) - 1); r > 0; r--)
{
	for (q = (ds_grid_width(oBoard.hexgrid) - 1); q > 0; q--)
	{
		ds_grid_set(oBoard.hexgrid,q,r, ds_grid_get(oBoard.hexgrid,q,r-1));
	}
}

for (q = (ds_grid_width(oBoard.hexgrid) - 1); q > 0; q--)
	{
		ds_grid_set(oBoard.hexgrid,q,0,0);
	}

return;