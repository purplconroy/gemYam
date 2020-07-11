var inst;
qr = GridToHex(mouse_x,mouse_y,64,38);
xy = HexToGrid(qr[0],qr[1],64,38);
inst = instance_create_layer(xy[0],xy[1],"Instances",oTile);