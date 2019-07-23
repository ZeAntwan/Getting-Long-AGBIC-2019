/// @description Insérez la description ici

draw_x += 1;
draw_y -= 1;

if (draw_x >= sprite_width) draw_x = 0;
if (draw_y <= -sprite_height) draw_y = 0;

draw_sprite(sprite_index,image_index,x + draw_x,y + draw_y);
draw_sprite(sprite_index,image_index,(x - sprite_width) + draw_x,y + draw_y);
draw_sprite(sprite_index,image_index,x + draw_x,(y + sprite_height) + draw_y);
draw_sprite(sprite_index,image_index,(x - sprite_width) + draw_x,(y + sprite_height) + draw_y);
