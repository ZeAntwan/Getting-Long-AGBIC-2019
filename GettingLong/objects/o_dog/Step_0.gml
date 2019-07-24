/// @description Move
// Move
if (dog_state == states.reverse) {
	// If wanted move is the reverse of previous move : Reverse
		show_debug_message("REVERSE")
		scr_reverse()
		scr_snake_move();	
		global.movecount--;
} else if (dog_state = states.walking) 
{
	// Else : Normal Move
	//show_debug_message([dx,dy])
	scr_move(next_x,next_y);
	scr_snake_move();
	global.movecount++;
	scr_itemcheck(x,y);
}	
	
dog_state = states.idle;	
	
if (keyboard_check_pressed(vk_space)) {
	debug_item = !debug_item;
}

var ref = snake_item[| 0]
direction = point_direction(ref.x,ref.y,x,y);







