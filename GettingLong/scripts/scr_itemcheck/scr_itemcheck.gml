///@desc Try for item collision
///@params x,y
// If Collision, check for item
var _x = argument0;
var _y = argument1;
	var col_item = instance_place(_x, _y, o_item);

	// Add snake part if ok
	if (col_item != noone) {
		if (o_dog.dog_state == states.walking) {
			if (col_item.state == itemstate.idle) {
				col_item.state = itemstate.using;
				col_item.move_used = global.movecount;
			}
		}
		if (o_dog.dog_state == states.reverse) {
			if (col_item.state == itemstate.used and col_item.move_used == global.movecount) {
				col_item.state = itemstate.reverse;
			}
		}
	}