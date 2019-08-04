/// @description Insérez la description ici

if (state == itemstate.idle) {
	
}

if (state == itemstate.using) {
	event_user(0);
	state = itemstate.idle
}

if (state == itemstate.used) {
	
}

if (state == itemstate.reverse) {
	event_user(1);
	state = itemstate.idle
}
