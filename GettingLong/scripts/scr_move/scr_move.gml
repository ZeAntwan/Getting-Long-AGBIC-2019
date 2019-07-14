///@desc Move the player
///@param direction

var dir = argument0;
var components = global.components[dir]
var dx = components[0];
var dy = components[1];

if (state == states.idle) {
	
	x_from = x_pos;
	y_from = y_pos;
	
	x_to = x_pos + dx;
	y_to = y_pos + dy;
	
	for (var i = 0; i < ds_list_size(snake_item); i++) {
		var _sc = snake_item[| i];
		var _sx = _sc[0];
		var _sy = _sc[1];
		
		snake_item[| i] = [(_sx + dx),(_sy + dy)]
	}
	
	x_pos = x_to;
	y_pos = y_to;
	
	
	
	state = states.walking;	
}