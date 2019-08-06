/// @description ACTION
if (global.crumbcount == global.targetcrumb) {
	if (alarm[0] == -1) {
		o_dog.dog_state = states.freeze;
		alarm[0] = 1*room_speed
	}
} else {
	
}
