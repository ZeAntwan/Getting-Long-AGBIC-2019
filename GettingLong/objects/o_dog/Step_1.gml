/// @description Check item and cols
if (dog_state != states.freeze) {
	
	var dx = o_input.dx
	var dy = o_input.dy
	
	if (dx != 0 or dy != 0) {
		next_x = x + dx * tile_width;
		next_y = y + dy * tile_height;
		
		for (var i = 0; i < instance_number(o_ingredient_moving); ++i;)
		    {
				var item = instance_find(o_ingredient_moving,i);
				if (item.future_x == next_x and item.future_y == next_y) {
					global.dogblocked = true;
					break;
				}
				for (var p = 0; p < ds_list_size(snake_item); p++) {
					var p_x = snake_item[|p].next_x;
					var p_y = snake_item[|p].next_y
					if (item.future_x == p_x and item.future_y == p_y) {
						global.dogblocked = true;
						break;
					}
				}
		    }
		
		if ((global.movecount > 0) and (array_equals(move_mem[| 0],[next_x,next_y]))) {
				// If wanted move is the reverse of previous move : Reverse
					dog_state = states.reverse;
					scr_itemcheck(x,y);					
		} else {
			
			if (!global.dogblocked) 
			{
				var col_tile = tilemap_get_at_pixel(col_tilemap, next_x, next_y)
				var col_part = instance_position(next_x, next_y, o_obstacle)
				// Else : Normal Move
				if (col_tile == 0 and (col_part == noone or !col_part.state)) {
					var btn_check = instance_position(next_x, next_y, o_button)
					if (btn_check != noone) {
						for (var i=0; i <= instance_number(o_ingredient_door) -1; i++) {
							var inst = instance_find(o_ingredient_door,i);
							for (var p = 0; p < ds_list_size(snake_item); p++) {
								if (inst.x = snake_item[|p].x and inst.y = snake_item[|p].y) {
									global.dogblocked = true
									break;
								} else {
									//dog_state = states.walking
								};
							}
						}
					} else {
						
					}
				}
				else {
					global.dogblocked = true
				};
			}
			
			if (global.dogblocked)
			{
				// Play sound here
				audio_play_sound(ouch_sound[irandom(2)],1,false);
				exit;

			} else {
				dog_state = states.walking
			}
		}
	}
}