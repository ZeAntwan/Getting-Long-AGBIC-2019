/// @description REVERSE
var prev_c = ds_stack_pop(memory);

var prev_x = prev_c[0];
var prev_y = prev_c[1];

var mem_x = x;
var mem_y = y;

x = prev_x;

y = prev_y;

switch direction {
	case 0: 
		future_x = x + tile_width; break;
	case 90: 
		future_y = y - tile_height; break;
	case 180: 
		future_x = x - tile_width; break;
	case 270: 
		future_y = y + tile_height; break;
}

direction = point_direction(x,y,mem_x,mem_y)