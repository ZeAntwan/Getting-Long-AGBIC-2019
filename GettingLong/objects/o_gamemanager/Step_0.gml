/// @description Insérez la description ici

//if (keyboard_check_pressed(vk_space)) global.targetlevel = room+1;

if (global.currentlevel != global.targetlevel) {
	scr_roomchange(global.targetlevel);
}

if (keyboard_check(vk_escape)) {
	if (room != rm_menu) {
		global.targetlevel = rm_menu;
	}
}

// Music Manager
if (global.currentlevel != rm_menu) {
	audio_sound_gain(snd_bgm_2, 0, 100);
} else {
	audio_sound_gain(snd_bgm_2, .5, 100);
}