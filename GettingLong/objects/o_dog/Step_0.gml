/// @description Move

if (keyboard_check_pressed(vk_right)) {
	scr_move(directions.right);
}
if (keyboard_check_pressed(vk_up)) {
	scr_move(directions.up);
}
if (keyboard_check_pressed(vk_left)) {
	scr_move(directions.left);
}
if (keyboard_check_pressed(vk_down)) {
	scr_move(directions.down);
}


if (state == states.walking) {
	
	var _x = lerp(x_from, x_to, 1);
	var _y = lerp(y_from, y_to, 1);
	
	
	
	x = _x * tile_width;
	y = _y * tile_height;
	
	state = states.idle;
}

// On Item choppage : ds_list_add(snake_item,[x,y]);
if (keyboard_check_pressed(vk_space)) {
	ds_list_add(snake_item,[x_from,y_from]);
	scr_move(directions.right);
}
