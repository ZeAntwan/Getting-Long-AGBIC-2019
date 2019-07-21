///@desc Try for item collision
///@params x,y
// If Collision, check for item
var _x = argument0;
var _y = argument1;
	var col_item = instance_place(_x, _y, o_item);

	// Add snake part if ok
	if (col_item != noone) {
		if (dog_state == states.walking) {
			if (col_item.state == itemstate.idle) {
				col_item.state = itemstate.using;
			}
		}
		if (dog_state == states.reverse) {
			if (col_item.state == itemstate.used) {
				col_item.state = itemstate.reverse;
			}
		}
	}