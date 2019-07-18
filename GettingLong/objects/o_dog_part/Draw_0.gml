/// @description Insérez la description ici

var top = place_meeting(x,y-tile_width,o_dog)
var right = place_meeting(x+tile_width,y,o_dog)
var down = place_meeting(x,y+tile_width,o_dog)
var left = place_meeting(x-tile_width,y,o_dog)

around = top + right + down + left;
show_debug_message(string(id) + " " + string(direction))

if (around == 1 or (top xor right xor down xor left)) {
	if (top) {direction = 90;}
	else if (right) {direction = 0;}
	else if (down) {direction = 270;}
	else if (left) {direction = 180;}
}

draw_sprite_ext(s_dog_part_straight,0,x+tile_width/2,y+tile_height/2,1,1,direction,c_white,1)

var toppart = place_meeting(x,y-tile_width,o_dog_part)
var rightpart = place_meeting(x+tile_width,y,o_dog_part)
var downpart = place_meeting(x,y+tile_width,o_dog_part)
var leftpart = place_meeting(x-tile_width,y,o_dog_part)


draw_text(x,y,id);