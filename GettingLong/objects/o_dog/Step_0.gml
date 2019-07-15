/// @description Move


if (keyboard_check_pressed(vk_right) xor keyboard_check_pressed(vk_left) xor keyboard_check_pressed(vk_up) xor keyboard_check_pressed(vk_down)) {
	
	var dx = keyboard_check_pressed(vk_right)-keyboard_check_pressed(vk_left)
	var dy = keyboard_check_pressed(vk_down)-keyboard_check_pressed(vk_up)
	
	// Check collision here
	var col_tile = tilemap_get_at_pixel(col_tilemap, x + dx*tile_width, y + dy*tile_height)
	if (col_tile != 0) return;
	// If no collision, check for item
	
	// Move the snake
	
	if (snake_len != 0) {
		ds_list_insert(snake_dir,0,last_dir)
		for (var i = ds_list_size(snake_dir)-1; i > snake_len; i--) {
			ds_list_delete(snake_dir,i);
		}
		
		for (var s = 0; s < ds_list_size(snake_item); s++) {
			var item = snake_item[| s];
			var c = snake_dir[| s];
			var cx = c[0]
			var cy = c[1]
			
			item.x+= cx * tile_width;
			item.y+= cy * tile_height;
		}
	}
	
	if (debug_item) {
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

	x+= dx * tile_width;
	y+= dy * tile_height;
	
	last_dir = [dx,dy];

}

if (keyboard_check_pressed(vk_space)) {
	debug_item = !debug_item;
}








