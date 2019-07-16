///@desc
///@param

var factor = argument0;

if (snake_len != 0) {
		if(factor == 1) ds_list_insert(snake_dir,0,last_dir)
		for (var i = ds_list_size(snake_dir)-1; i > snake_len; i--) {
			ds_list_delete(snake_dir,i);
		}
		
		for (var s = 0; s < ds_list_size(snake_item); s++) {
			var item = snake_item[| s];
			var c = snake_dir[| s];
			var cx = factor * c[0]
			var cy = factor * c[1]
			
			item.x+= cx * tile_width;
			item.y+= cy * tile_height;
		}
		if(factor == -1) ds_list_delete(snake_dir,0)
	}