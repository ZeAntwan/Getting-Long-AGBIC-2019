/// @description Insérez la description ici
var tartxt = room_get_name(global.targetlevel)
if (string_count("lvl_",tartxt) != 0) {
	offset = 0;
	if (global.currentlevel == global.targetlevel) {
		instance_destroy();
	}
} else {
		offset = o_camera.y;
}

sinvalue += (pi * 2) / 60;
if (sinvalue >= pi*2) sinvalue = 0;

y = offset + o_y + (sin(sinvalue) * 5);



