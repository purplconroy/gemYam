menuIndex = -1;

menuButtons = [
	"Exit",
	"Options",
	"New Game"
];

menuLength = array_length_1d(menuButtons);

menuLeftBuffer = window_get_width()/10;
menuFloor = floor(window_get_height()*(2/3));
menuButttonHeight = 64;
