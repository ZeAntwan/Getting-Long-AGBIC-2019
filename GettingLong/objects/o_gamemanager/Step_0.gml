/// @description Insérez la description ici

//if (keyboard_check_pressed(vk_space)) global.targetlevel = room+1;

if (global.currentlevel != global.targetlevel) {
	scr_roomchange(global.targetlevel);
}

if (keyboard_check_pressed(vk_escape)) {
	if (room != rm_menu) {
		global.targetlevel = rm_menu;
	} else {
		if (browser_not_a_browser) game_end();
	}
}


if (keyboard_check_pressed(ord("R"))) {
	if (room != rm_menu) {
		room_restart();
	}
}

// Music Manager
if (browser_not_a_browser) {
	if (global.currentlevel != rm_menu and global.currentlevel != rm_end and global.currentlevel != rm_levelselect) {
		audio_sound_gain(snd_bgm_2, 0, 100);
		audio_sound_gain(snd_bgm_3,(global.crumbcount/global.targetcrumb),50);
		if (global.crumbcount == global.targetcrumb) {
			audio_sound_gain(snd_bgm_2, .4, 50);
		}
	} else {
		audio_sound_gain(snd_bgm_2, .4, 100);
		audio_sound_gain(snd_bgm_3, 1, 100);
	}
}

if (keyboard_check_pressed(ord("M"))) {
	global.bgmtoggle = !global.bgmtoggle
}

if (browser_not_a_browser) {
	if (global.bgmtoggle) {
		if (!audio_sync_group_is_playing(bgm)) {
			audio_start_sync_group(bgm)
		}
	} else {
		if (audio_sync_group_is_playing(bgm)) {
			audio_stop_sync_group(bgm)
		}	
	}
} else {
		if (global.bgmtoggle) {
		if (!audio_is_playing(bgm)) {
			bgm = audio_play_sound(snd_full,1,true)
		}
	} else {
		if (audio_is_playing(bgm)) {
			audio_stop_sound(bgm)
		}	
	}
}

