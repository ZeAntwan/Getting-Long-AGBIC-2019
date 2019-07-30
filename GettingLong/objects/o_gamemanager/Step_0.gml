/// @description Insérez la description ici

//if (keyboard_check_pressed(vk_space)) global.targetlevel = room+1;

if (global.currentlevel != global.targetlevel) {
	scr_roomchange(global.targetlevel);
}

if (keyboard_check_pressed(vk_escape)) {
	if (room != rm_menu) {
		global.targetlevel = rm_menu;
	} else {
		game_end();
	}
}

// Music Manager
if (global.currentlevel != rm_menu) {
	audio_sound_gain(snd_bgm_2, 0, 100);
} else {
	audio_sound_gain(snd_bgm_2, .5, 100);
}

if (keyboard_check_pressed(ord("M"))) {
	global.bgmtoggle = !global.bgmtoggle
}

if (global.bgmtoggle) {
	if (!audio_sync_group_is_playing(bgm)) {
		audio_start_sync_group(bgm)
	}
} else {
	if (audio_sync_group_is_playing(bgm)) {
		audio_stop_sync_group(bgm)
	}	
}