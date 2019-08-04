/// @description Insérez la description ici


if (state != itemstate.used) {
	sinvalue += (pi * 2) / 60;
	if (sinvalue >= pi*2) sinvalue = 0;

	var wiggely = o_y + (sin(sinvalue) * 2);
	
	draw_sprite(sprite_index,image_index,x,wiggely)
	
}


