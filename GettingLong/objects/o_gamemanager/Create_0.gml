/// @description 


// List Levels
global.levellist = ds_list_create();
for (var l = room_first; l <= room_last; l++) {
	var check = string_count("lvl_",room_get_name(l));
	if (check == 1) {
		ds_list_add(global.levellist,l);
	}
	
}

// Var setup
global.currentlevel = noone;
global.targetlevel = noone;

global.movecount = 0;

global.crumbcount = 0;
