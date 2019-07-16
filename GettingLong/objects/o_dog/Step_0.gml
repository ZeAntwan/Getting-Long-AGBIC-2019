/// @description Move


if (keyboard_check_pressed(vk_right) xor keyboard_check_pressed(vk_left) xor keyboard_check_pressed(vk_up) xor keyboard_check_pressed(vk_down)) {
	
	var dx = keyboard_check_pressed(vk_right)-keyboard_check_pressed(vk_left)
	var dy = keyboard_check_pressed(vk_down)-keyboard_check_pressed(vk_up)
	
	// Check if direction is not a reverse move
	if (array_equals(last_dir,[-dx,-dy])) {
		show_debug_message("REVERSE");
		// Remove last added snake part (to condition if item was picked up)
		if (ds_list_size(snake_item) > 1) {
			var item = ds_list_size(snake_item)-1
			instance_destroy(snake_item[| item]);
			ds_list_delete(snake_item,item);
		}
		scr_snake_move(-1);
		scr_move(dx,dy)
		return;
	}
	// Check collision here
	var col_tile = tilemap_get_at_pixel(col_tilemap, x + dx*tile_width, y + dy*tile_height)
	var col_part = place_meeting(x + dx*tile_width, y + dy*tile_height, o_dog_part)
	if (col_tile != 0 or col_part) return;
	// Move the snake
	
	scr_snake_move(1);
	
	// If Collision, check for item
	var col_item = place_meeting(x + dx * tile_width, y + dy * tile_height, o_item);
	
	// Add snake part
	if (debug_item or col_item) {
		if (snake_len != 0) {
			var refitem = snake_item[| snake_len-1]
			var refc = snake_dir[| snake_len-1]
			var refcx = refc[0]
			var refcy = refc[1]
			var px = refitem.x - refcx * tile_width 
			var py = refitem.y - refcy * tile_height
			var item = instance_create_layer(px,py,"Parts",o_dog_part);
		} else {
			var item = instance_create_layer(x,y,"Parts",o_dog_part);
		}
		
		ds_list_add(snake_item,item);
		snake_len++
	}

	scr_move(dx,dy)
	show_debug_message(last_dir)
}

if (keyboard_check_pressed(vk_space)) {
	debug_item = !debug_item;
}








