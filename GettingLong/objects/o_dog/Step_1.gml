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
				if (item.future_x = next_x and item.future_y = next_y) {
					global.dogblocked = true;
					break;
				}
		    }
		
		if ((global.movecount > 0) and (array_equals(move_mem[| 0],[next_x,next_y]))) {
				// If wanted move is the reverse of previous move : Reverse
					dog_state = states.reverse;
					scr_itemcheck(x,y);					
		} else {
			
			if (!global.dogblocked) 
			{
				var col_tile = tilemap_get_at_pixel(col_tilemap, x + dx*tile_width, y + dy*tile_height)
				var col_part = place_meeting(x + dx*tile_width/2, y + dy*tile_height/2, o_obstacle)
				// Else : Normal Move
				if (col_tile == 0 and !col_part) {dog_state = states.walking}
				else {global.dogblocked = true};
			}
			
			if (global.dogblocked)
			{
				// Play sound here
				audio_play_sound(ouch_sound[irandom(2)],1,false);
				exit;

			}
		}
	}
}