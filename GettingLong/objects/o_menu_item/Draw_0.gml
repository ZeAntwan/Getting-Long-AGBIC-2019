/// @description Insérez la description ici



draw_sprite_stretched_ext(sprite_index,image_index,x-t_w/2,y-t_h/2,t_w,t_h,c_white,1);
draw_sprite_ext(s_btn_corner,0,x-t_w/2,y,1,1,0,c_white,1)
draw_sprite_ext(s_btn_corner,0,x+t_w/2,y,1,1,180,c_white,1)


draw_set_font(fn_main);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(x,y,text);

if (selected) {
	draw_sprite(s_cursor,0,x-(t_w/2)-13,y)
}
