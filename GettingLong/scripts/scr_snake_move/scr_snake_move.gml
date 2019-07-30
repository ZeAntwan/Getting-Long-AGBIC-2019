///@desc
///@param

if (ds_list_size(snake_item) > 0) {
		
		for (var s = 0; s < ds_list_size(snake_item); s++) {
			var item = snake_item[| s];
			if (s = 0) {
				item.next_x = o_dog.x;
				item.next_y = o_dog.y;
			} else {
				var sc = move_mem[| s-1];
				item.next_x = sc[0];
				item.next_y = sc[1];
			}
			var c = move_mem[| s];
			var cx = c[0]
			var cy = c[1]
			
			item.x = cx;
			item.y = cy;
		}
	}