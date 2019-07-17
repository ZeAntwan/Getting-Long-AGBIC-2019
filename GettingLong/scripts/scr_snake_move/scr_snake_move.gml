///@desc
///@param

if (ds_list_size(snake_item) > 0) {
		
		for (var s = 0; s < ds_list_size(snake_item); s++) {
			var item = snake_item[| s];
			var c = move_mem[| s];
			var cx = c[0]
			var cy = c[1]
			
			item.x = cx;
			item.y = cy;
		}
	}