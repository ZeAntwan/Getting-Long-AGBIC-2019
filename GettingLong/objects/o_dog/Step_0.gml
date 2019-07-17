/// @description Move


if (keyboard_check_pressed(vk_right) xor keyboard_check_pressed(vk_left) xor keyboard_check_pressed(vk_up) xor keyboard_check_pressed(vk_down)) {
	
	var dx = keyboard_check_pressed(vk_right)-keyboard_check_pressed(vk_left)
	var dy = keyboard_check_pressed(vk_down)-keyboard_check_pressed(vk_up)
	
	var next_x = x + dx * tile_width;
	var next_y = y + dy * tile_height;

	
	// Move
	
	
	if ((move_count > 0) and (array_equals(move_mem[| 0],[next_x,next_y]))) {
		// If reverse move...
			show_debug_message("REVERSE")
			scr_reverse()
			scr_snake_move();	
			move_count--;
	} else {
	// Normal Move
		show_debug_message([dx,dy])
		var col_tile = tilemap_get_at_pixel(col_tilemap, x + dx*tile_width, y + dy*tile_height)
		var col_part = place_meeting(x + dx*tile_width/2, y + dy*tile_height/2, o_dog_part)
		if (col_tile != 0 or col_part) return;
		
		scr_move(next_x,next_y);
		scr_snake_move();
		last_move = [dx,dy];
		move_count++;
	}
	
	

	// If Collision, check for item
	var col_item = place_meeting(x, y, o_item);
	
	// Add snake part if ok
	if (debug_item or col_item) {
		scr_snake_add()
	}
	
}

if (keyboard_check_pressed(vk_space)) {
	debug_item = !debug_item;
}








