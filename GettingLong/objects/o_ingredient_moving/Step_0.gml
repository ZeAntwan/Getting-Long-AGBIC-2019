/// @description Insérez la description ici
if (currentmove < global.movecount) {
	event_user(0);
	currentmove = global.movecount;
}

if (currentmove > global.movecount) {
	event_user(1);
	currentmove = global.movecount;
}
