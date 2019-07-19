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
	
	if (direction == 0 or direction == 180) {
		switch prev_diff_y {
			case 0 :
				cur_img = 0;
				break;
			case -1 :
				cur_img = 1;
				break;
			case 1 :
				cur_img = 2
				break;
		}
	}
	if (direction == 90 or direction == 270) {
		switch prev_diff_x {
			case 0 :
				cur_img = 0;
				break;
			case -1 :
				cur_img = 1;
				break;
			case 1 :
				cur_img = 2
				break;
		}
	}
	
	
	save_x = x;
	save_y = y;
}
