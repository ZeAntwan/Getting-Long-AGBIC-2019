/// @description 


// List Levels
global.levellist = ds_list_create();
for (var l = room_first; l <= room_last; l++) {
	var roomname = room_get_name(l)
	var check = string_count("lvl_",roomname);
	var name = string_replace(roomname,"_"," ")
	if (check == 1) {
		ds_list_add(global.levellist,[l,name]);
	}
	
}

// Var setup
global.currentlevel = noone;
global.targetlevel = noone;

global.movecount = 0;

global.crumbcount = 0;
