/// @description 

if (state) {
	mask_index = -1;
	if (place_meeting(x,y,o_dog) or place_meeting(x,y,o_dog_part)) {
		global.dogblocked = true;	
	}
} else {
	mask_index = s_door
}
