/// @description Check item and cols
if (dog_state != states.freeze) {
	if (keyboard_check_pressed(vk_right) xor keyboard_check_pressed(vk_left) xor keyboard_check_pressed(vk_up) xor keyboard_check_pressed(vk_down)) {
	
		var dx = keyboard_check_pressed(vk_right)-keyboard_check_pressed(vk_left)
		var dy = keyboard_check_pressed(vk_down)-keyboard_check_pressed(vk_up)
	
		next_x = x + dx * tile_width;
		next_y = y + dy * tile_height;
	
		if ((global.movecount > 0) and (array_equals(move_mem[| 0],[next_x,next_y]))) {
				// If wanted move is the reverse of previous move : Reverse
					dog_state = states.reverse;
					scr_itemcheck(x,y);
					global.dogblocked = false;
		} else {
			if (global.dogblocked) 
			{
				//global.dogblocked = false;
				exit;
			}
			else
			{
				// Else : Normal Move
				var col_tile = tilemap_get_at_pixel(col_tilemap, x + dx*tile_width, y + dy*tile_height)
				var col_part = place_meeting(x + dx*tile_width/2, y + dy*tile_height/2, o_obstacle)
				if (col_tile == 0 and !col_part) {dog_state = states.walking};
			}
		}
	}
}