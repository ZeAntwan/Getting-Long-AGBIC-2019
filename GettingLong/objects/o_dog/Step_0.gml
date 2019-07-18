/// @description Move


if (keyboard_check_pressed(vk_right) xor keyboard_check_pressed(vk_left) xor keyboard_check_pressed(vk_up) xor keyboard_check_pressed(vk_down)) {
	
	var dx = keyboard_check_pressed(vk_right)-keyboard_check_pressed(vk_left)
	var dy = keyboard_check_pressed(vk_down)-keyboard_check_pressed(vk_up)
	
	var next_x = x + dx * tile_width;
	var next_y = y + dy * tile_height;

	// Move
	if ((move_count > 0) and (array_equals(move_mem[| 0],[next_x,next_y]))) {
		// If wanted move is the reverse of previous move : Reverse
			dog_state = states.reverse;
			show_debug_message("REVERSE")
			scr_reverse()
			scr_snake_move();	
			move_count--;
	} else {
		// Else : Normal Move
		dog_state = states.walking;
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
	var col_item = instance_place(x, y, o_item);

	// Add snake part if ok
	if (col_item != noone) {
		if (dog_state == states.walking) {
			if (col_item.state == itemstate.idle) {
				col_item.state = itemstate.using;
			}
		}
		if (dog_state == states.reverse) {
			if (col_item.state == itemstate.used) {
				col_item.state = itemstate.reverse;
			}
		}
		
		// TODO : Record when snakpart was added in move_count to remove it next time.
		// Maybe add it to the "Snake" list [item,move_count] and each reverse, check ?
		// Or maybe create a list that records event based on the "Move Count" index ?
	}
	
	
	dog_state = states.idle;	
	
}

if (keyboard_check_pressed(vk_space)) {
	debug_item = !debug_item;
}








