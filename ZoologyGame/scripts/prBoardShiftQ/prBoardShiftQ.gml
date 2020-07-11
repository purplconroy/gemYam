oBoard.qOffset += 1;

ds_grid_resize(oBoard.hexgrid, ds_grid_width(oBoard.hexgrid) + 1, ds_grid_height(oBoard.hexgrid));

var q, r;
for (r = (ds_grid_height(oBoard.hexgrid) - 1); r > 0; r--)
{
	for (q = (ds_grid_width(oBoard.hexgrid) - 1); q > 0; q--)
	{
		ds_grid_set(oBoard.hexgrid,q,r, ds_grid_get(oBoard.hexgrid,q-1,r));
	}
	ds_grid_set(oBoard.hexgrid,0,r,0);
}
return;