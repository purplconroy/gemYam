var mouseHover = false;

for (var i = 0; i < menuLength; i++)
{
	draw_set_font(fMenu);
	if (mouse_y > menuFloor - ((i+1)*menuButttonHeight) && mouse_y <  menuFloor-(i*menuButttonHeight))
	{
		draw_set_color(c_black);
		mouseHover = true;
		menuIndex = menuLength - i -1;
	}
	else
	{
		draw_set_color(c_white);
	}
	draw_text(menuLeftBuffer, menuFloor - ((i+1)*menuButttonHeight), menuButtons[i]);
}

if (!mouseHover)
{
	menuIndex = -1;
}