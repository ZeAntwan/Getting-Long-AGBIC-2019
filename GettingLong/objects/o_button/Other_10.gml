/// @description ACTION

buttonstate = !buttonstate

for (var i=0; i <= instance_number(o_ingredient_door) -1; i++) {
	var inst = instance_find(o_ingredient_door,i);
	with(inst) {
		event_user(2);	
	};
}
event_inherited();