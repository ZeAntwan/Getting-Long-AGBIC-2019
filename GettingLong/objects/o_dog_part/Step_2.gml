/// @description Insérez la description ici

if (save_x != x or save_y != y) {

	scr_snake_updatedir()
	
	prev_x = save_x;
	prev_y = save_y;
	save_x = x;
	save_y = y;
	
	show_debug_message("ID : "+string(id));
	show_debug_message("Direction : "+string(direction));
	show_debug_message("Image : "+string(cur_img));
}
