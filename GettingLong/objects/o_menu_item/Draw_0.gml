/// @description Insérez la description ici

draw_self();

if (selected) {
	draw_arrow(x-20-sprite_width/2,y,x-2-sprite_width/2,y,20);
}

draw_set_font(fn_main);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(x,y,text);
