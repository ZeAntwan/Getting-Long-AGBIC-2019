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
	
	walk_anim_time += delta_time / 1000000;
	
	var t = walk_anim_time / walk_anim_length;
	
	if (t >= 1) {
		walk_anim_time = 0;
		t = 1;
		state = states.idle;		
	}
	
	var _x = lerp(x_from, x_to, t);
	var _y = lerp(y_from, y_to, t);
	
	x = _x * tile_width;
	y = _y * tile_height;
}
