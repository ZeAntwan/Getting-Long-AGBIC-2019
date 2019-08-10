/// @description REVERSE
var prev_c = ds_stack_pop(memory);

// Check for item except crumb
var col_item = instance_place(x, y, o_button);

if (col_item != noone) {
	if (col_item.state == itemstate.used and col_item.move_used-1 == global.movecount) {
		col_item.state = itemstate.reverse;
	}
} 

future_x = x;
future_y = y;

var prev_x = prev_c[0];
var prev_y = prev_c[1];
var prev_d = prev_c[2];

x = prev_x;

y = prev_y;

direction = prev_d



