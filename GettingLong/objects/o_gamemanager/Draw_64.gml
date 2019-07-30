/// @description Insérez la description ici
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black);
if (room != rm_menu and room != rm_levelselect and room != rm_credits and room != rm_end) { 
draw_text(15,15,"Move :" + string(global.movecount));
draw_text(15,30,"Crumbs :" + string(global.crumbcount));
//if(instance_exists(o_dog)) {draw_text(15,45,"Dogblocked :" + string(global.dogblocked));}
}