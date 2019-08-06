/// @description Insérez la description ici

draw_x += 1;
draw_y -= 1;

var len = (sprite_width * sqrt(2));

if (draw_x >= len/2) draw_x = 0;
if (draw_y <= -len/2) draw_y = 0;

draw_sprite_ext(sprite_index,image_index,x + draw_x,y + draw_y,1,1,45,c_white,1);
draw_sprite_ext(sprite_index,image_index,(x - len/2) + draw_x,(y + len/2) + draw_y,1,1,45,c_white,1);
draw_sprite_ext(sprite_index,image_index,(x - len) + draw_x,(y + len) + draw_y,1,1,45,c_white,1);
draw_sprite_ext(sprite_index,image_index,(x + len/2) + draw_x,(y + len/2) + draw_y,1,1,45,c_white,1);
draw_sprite_ext(sprite_index,image_index,(x) + draw_x,(y + len) + draw_y,1,1,45,c_white,1);
draw_sprite_ext(sprite_index,image_index,(x - len/2) + draw_x,(y + 1.5*len) + draw_y,1,1,45,c_white,1);
