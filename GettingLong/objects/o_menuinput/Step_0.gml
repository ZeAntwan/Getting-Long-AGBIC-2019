/// @description Insérez la description ici
if (keyboard_check_pressed(vk_right) xor keyboard_check_pressed(vk_left) xor keyboard_check_pressed(vk_up) xor keyboard_check_pressed(vk_down)) {
	
	var dx = keyboard_check_pressed(vk_right)-keyboard_check_pressed(vk_left)
	var dy = keyboard_check_pressed(vk_down)-keyboard_check_pressed(vk_up)
	
	if (dy != 0) {
		menu_item[| currentsel].selected = false;
		currentsel+= dy;
		currentsel = clamp(currentsel,0,ds_list_size(menu_item)-1);
		menu_item[| currentsel].selected = true;
	}
	
	if (dx == 1) {
		with(menu_item[| currentsel]) {
			event_user(0);	
		}
	}
	if (dx == -1) {
		global.targetlevel = rm_menu;
	}
	

}
