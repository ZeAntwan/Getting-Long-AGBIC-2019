/// @description ACTION

ds_stack_push(memory,[x,y]);

var right = !place_free(x+(tile_width/2),y) or tilemap_get_at_pixel(col_tilemap, x + (tile_width), y)
var left = !place_free(x-(tile_width/2),y) or tilemap_get_at_pixel(col_tilemap, x - (tile_width), y)
var top = !place_free(x,y-(tile_height/2)) or tilemap_get_at_pixel(col_tilemap, x, y - (tile_height))
var down = !place_free(x,y+(tile_height/2)) or tilemap_get_at_pixel(col_tilemap, x, y + (tile_height))


if((right and direction == 0) or (top and direction == 90) or (left and direction == 180) or (down and direction == 270)) {
	direction += rotation;
}


switch direction {
	case 0: 
		if(!right) {x+= tile_width;} break;
	case 90: 
		if (!top) {y-= tile_height;} break;
	case 180: 
		if (!left) {x-= tile_width;} break;
	case 270: 
		if (!down) {y+= tile_height;} break;
}

