/// @description Insérez la description ici

if (keyboard_check_pressed(vk_space)) global.targetlevel = room+1;

if (global.currentlevel != global.targetlevel) {
	scr_roomchange(global.targetlevel);
}