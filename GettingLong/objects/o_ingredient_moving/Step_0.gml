/// @description Insérez la description ici
if (currentmove < global.movecount) {
	event_user(0);
	currentmove = global.movecount;
}

if (currentmove > global.movecount) {
	event_user(1);
	currentmove = global.movecount;
}

var dogright = (place_meeting(x+(tile_width*.5),y,o_dog) or place_meeting(x+(tile_width*1.5),y,o_dog) or place_meeting(x+(tile_width/2),y,o_dog_part));
var dogleft = (place_meeting(x-(tile_width*.5),y,o_dog) or place_meeting(x-(tile_width*1.5),y,o_dog) or place_meeting(x-(tile_width/2),y,o_dog_part));
var dogtop = (place_meeting(x,y-(tile_height*.5),o_dog) or place_meeting(x,y-(tile_height/2),o_dog_part));
var dogdown = (place_meeting(x,y+(tile_height*.5),o_dog) or place_meeting(x,y+(tile_height/2),o_dog));

if((dogright and direction == 0) or (dogtop and direction == 90) or (dogleft and direction == 180) or (dogdown and direction == 270)) {
	global.dogblocked = true;
}
