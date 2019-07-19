/// @description Insérez la description ici

if (save_x != x or save_y != y) {

	if (save_x < x and save_y == y) {direction = 0};
	if (save_x == x and save_y > y) {direction = 90};
	if (save_x > x and save_y == y) {direction = 180};
	if (save_x == x and save_y < y) {direction = 270};
	
	var size = ds_list_size(o_dog.snake_item)
	if (position != 0) 
		{
			previous = o_dog.snake_item[| position-1];
		}
	else 
		{
			previous = o_dog;
		}
	
	var prev_diff_x = sign(x - previous.x)
	var prev_diff_y = sign(y - previous.y)
	
	
	switch direction {
		case 0:
			switch prev_diff_y {
				case 0 :
					cur_img = 0;
					break;
				case -1 :
					cur_img = 1;
					break;
				case 1 :
					cur_img = 2;
					break;
			}
			break;
		case 90:
			switch prev_diff_x {
				case 0 :
					cur_img = 0;
					break;
				case -1 :
					cur_img = 1;
					break;
				case 1 :
					cur_img = 2;
					break;
			}
			break;
		case 180:
			switch prev_diff_y {
				case 0 :
					cur_img = 0;
					break;
				case -1 :
					cur_img = 2;
					break;
				case 1 :
					cur_img = 1;
					break;
			};
			break;
		case 270:
			switch prev_diff_x {
				case 0 :
					cur_img = 0;
					break;
				case -1 :
					cur_img = 2;
					break;
				case 1 :
					cur_img = 1;
					break;
			}
			break;
	}
	
	show_debug_message("Direction : "+string(direction));
	show_debug_message("Image : "+string(cur_img));
	
	save_x = x;
	save_y = y;
}
