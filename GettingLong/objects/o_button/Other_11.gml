/// @description REVERSE

buttonstate = !buttonstate

for (var i=0; i <= instance_number(o_ingredient_door) -1; i++) {
	var inst = instance_find(o_ingredient_door,i);
	inst.state = !inst.state;
}
