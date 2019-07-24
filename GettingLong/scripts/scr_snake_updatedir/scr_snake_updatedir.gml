var size = ds_list_size(o_dog.snake_item)
if (position != 0) 
{
	front = o_dog.snake_item[| position-1];
}
else
{
	front = o_dog;
}
if (position == size-1) //LAST
{
	cur_img = 3;
	back = noone;
}
else 
{
	back =  o_dog.snake_item[| position+1];
	cur_color = c_white;
}
		
	
	
var front_diff_x = sign(x - front.x)
var front_diff_y = sign(y - front.y)
	
if (front_diff_x != 0) 
{
	switch front_diff_x {
		case -1:
			direction = 0;
			break;
		case 1:
			direction = 180;
			break;
	}
}
else if (front_diff_y != 0) 
{
	switch front_diff_y {
		case -1:
			direction = 270;
			break;
		case 1:
			direction = 90;
			break;
	}
}
	
if (back != noone) {
	//var back_diff_x = sign(x - back.x);
	//var back_diff_y = sign(y - back.y);
	//var back_diff = [back_diff_x,back_diff_y];
	var aim = point_direction(back.x,back.y,x,y)
	
	
	switch angle_difference(aim,direction) {
		case 0:
			cur_img = 0;
			break;
		case 90:
			cur_img = 1;
			break;
		case 180 or -180:
			cur_img = 0;
			break;
		case -90:
			cur_img = 2;
			break;
	}
	
} else {

}