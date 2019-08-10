/// @description ACTION

ds_stack_push(memory,[x,y,direction]);

var right = !place_free(x+(tile_width/2),y) or (tilemap_get_at_pixel(col_tilemap, x + (tile_width), y) > 0)
var left = !place_free(x-(tile_width/2),y) or (tilemap_get_at_pixel(col_tilemap, x - (tile_width), y) > 0)
var top = !place_free(x,y-(tile_height/2)) or (tilemap_get_at_pixel(col_tilemap, x, y - (tile_height)) > 0)
var down = !place_free(x,y+(tile_height/2)) or (tilemap_get_at_pixel(col_tilemap, x, y + (tile_height)) > 0)

if((right and direction == 0) or (top and direction == 90) or (left and direction == 180) or (down and direction == 270)) {
	direction += rotation;	
}

switch direction {
	case 0: 
		if(!right) {x+= tile_width};
		break;
	case 90: 
		if (!top) {y-= tile_height};
		break;
	case 180: 
		if (!left) {x-= tile_width};
		break;
	case 270: 
		if (!down) {y+= tile_height}; 
		break;
}

var right = !place_free(x+(tile_width/2),y) or (tilemap_get_at_pixel(col_tilemap, x + (tile_width), y) > 0)
var left = !place_free(x-(tile_width/2),y) or (tilemap_get_at_pixel(col_tilemap, x - (tile_width), y) > 0)
var top = !place_free(x,y-(tile_height/2)) or (tilemap_get_at_pixel(col_tilemap, x, y - (tile_height)) > 0)
var down = !place_free(x,y+(tile_height/2)) or (tilemap_get_at_pixel(col_tilemap, x, y + (tile_height)) > 0)

if((right and direction == 0) or (top and direction == 90) or (left and direction == 180) or (down and direction == 270)) {
	direction += rotation;
}

if (direction < 0) direction += 360;

switch direction {
	case 0: 
		future_x = x + tile_width; 
		break;
	case 90: 
		future_y = y - tile_height; 
		break;
	case 180: 
		future_x = x - tile_width; 
		break;
	case 270: 
		future_y = y + tile_height; 
		break;
}

// Check for item except crumb
var col_item = instance_place(x, y, o_button);

if (col_item != noone) {
	if (col_item.state == itemstate.idle) {
		col_item.state = itemstate.using;
		col_item.move_used = global.movecount;
	}
}