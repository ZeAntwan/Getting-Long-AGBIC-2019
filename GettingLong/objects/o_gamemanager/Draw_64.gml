/// @description Insérez la description ici

var guimargin = 50;
gui_tr = [display_get_gui_width() - guimargin,guimargin]
gui_tl = [guimargin,guimargin]
gui_br = [display_get_gui_width()-guimargin,display_get_gui_height()-guimargin]
gui_bl = [guimargin,display_get_gui_height()-guimargin]

scale = 4;

draw_set_font(fn_gui);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(blucolor);
if (room != rm_menu and room != rm_levelselect and room != rm_end) {
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	
	draw_sprite_ext(s_dogUI,0,gui_bl[0],gui_bl[1],scale,scale,0,c_white,1);
	draw_text(gui_bl[0] + (((tile_width*scale)/2) + 20),gui_bl[1]," Moves : " + string(global.movecount))
	//draw_text(gui_br[0]-sprite_get_width(s_crumpet)-20,gui_br[1] - sprite_get_height(s_crumpet),string(global.crumbcount) + " / " + string(global.targetcrumb))
	//draw_sprite_ext(s_crumpet,0,gui_br[0]-sprite_get_width(s_crumpet),gui_br[1] - sprite_get_height(s_crumpet),3,3,0,c_white,1)
	
	draw_set_halign(fa_right);
	
	draw_sprite_ext(s_crumpetUI,0,gui_br[0],gui_br[1],scale,scale,0,c_white,1);
	draw_text(gui_br[0] - (((tile_width*scale)/2) + 20),gui_br[1],string(global.crumbcount) + " / " + string(global.targetcrumb))
	//draw_set_valign(fa_middle);
	//draw_text(gui_bl[0]+sprite_get_width(s_crumpetUI)/2+20,gui_bl[1]+sprite_get_height(s_crumpetUI)/2," Moves " + string(global.movecount))
	//draw_sprite_ext(s_crumpetUI,0,gui_bl[0]-sprite_get_width(s_crumpetUI)/2,gui_bl[1] - sprite_get_height(s_crumpetUI)/2,3,3,0,c_white,1)
	
//draw_text(15,15,"Move :" + string(global.movecount));
//draw_text(15,30,"Crumbs :" + string(global.crumbcount));
//if(instance_exists(o_dog)) {draw_text(15,45,"Dogblocked :" + string(global.dogblocked));}
}