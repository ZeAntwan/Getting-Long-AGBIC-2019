/// @description 


// List Levels
global.levellist = ds_list_create();
global.levelnames = ds_list_create();
for (var l = room_first; l <= room_last; l++) {
	var roomname = room_get_name(l)
	var check = string_count("lvl_",roomname);
	var name = string_replace(roomname,"_"," ")
	if (check == 1) {
		ds_list_add(global.levellist,l);
		ds_list_add(global.levelnames,name)
	}
	
}

ds_list_add(global.levellist,rm_end);
ds_list_add(global.levelnames,"End")

// Var setup
global.currentlevel = noone;
global.targetlevel = noone;

global.movecount = 0;

global.crumbcount = 0;


// Music
global.bgmtoggle = true;

bgm = audio_create_sync_group(true);
audio_play_in_sync_group(bgm,snd_bgm_1);
audio_play_in_sync_group(bgm,snd_bgm_2);
audio_play_in_sync_group(bgm,snd_bgm_3);

audio_start_sync_group(bgm);


// GUI
