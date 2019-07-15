/// @description Move


if (keyboard_check_pressed(vk_right) or keyboard_check_pressed(vk_left) or keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down)) {
	
	var dx = keyboard_check_pressed(vk_right)-keyboard_check_pressed(vk_left)
	var dy = keyboard_check_pressed(vk_down)-keyboard_check_pressed(vk_up)
	
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
		var item = instance_create_layer(x,y,"Parts",o_dog_part);
		ds_list_insert(snake_item,0,item);
		snake_len++
	}

	x+= dx * tile_width;
	y+= dy * tile_height;
	
	last_dir = [dx,dy];

}

if (keyboard_check_pressed(vk_space)) {
	debug_item = !debug_item;
}








