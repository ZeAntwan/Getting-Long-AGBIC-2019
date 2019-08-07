/// @description REVERSE
var prev_c = ds_stack_pop(memory);

future_x = x;
future_y = y;

var prev_x = prev_c[0];
var prev_y = prev_c[1];
var prev_d = prev_c[2];

x = prev_x;

y = prev_y;

direction = prev_d