/// @description Insérez la description ici

	var dx = o_input.dx
	var dy = o_input.dy

if (!ds_list_empty(menu_item)) {
	
	if (dy != 0) {
		
			menu_item[| currentsel].selected = false;
			if (currentsel != clamp(currentsel+dy,0,ds_list_size(menu_item)-1)) {
				currentsel = clamp(currentsel+dy,0,ds_list_size(menu_item)-1);
				audio_play_sound(waf_sounds[irandom(7)],1,false);
			}
			menu_item[| currentsel].selected = true;
		}
	
	if (dx == 1) {
		with(menu_item[| currentsel]) {
			event_user(0);	
		}
	}
}
if (dx == -1) {
	global.targetlevel = rm_menu;
}
