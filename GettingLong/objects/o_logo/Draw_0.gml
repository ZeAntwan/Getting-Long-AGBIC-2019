/// @description Insérez la description ici

sinvalue += (pi * 2) / 60;
if (sinvalue >= pi*2) sinvalue = 0;

y = o_y + (sin(sinvalue) * 5);;

//Shadow
draw_sprite_ext(sprite_index,image_index,x+1,y+1,1,1,0,c_black,.5)

// Normal
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,1)
