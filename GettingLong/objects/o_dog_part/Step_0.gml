/// @description Insérez la description ici
if (save_x != x or save_y != y) {
	
	if (save_x > x and save_y == y) {direction = 0};
	if (save_x == x and save_y > y) {direction = 90};
	if (save_x < x and save_y == y) {direction = 180};
	if (save_x == x and save_y < y) {direction = 270};
}

	save_x = x;
	save_y = y;

