/// @description ACTION
with (o_dog) {
	scr_snake_add();
	global.crumbcount++;
}

var crunchsfx = [snd_crunch_001,snd_crunch_002,snd_crunch_003,snd_crunch_004];
var randomsfx = irandom(3)
audio_play_sound(crunchsfx[randomsfx],1,false)