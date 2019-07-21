/// @description Insérez la description ici

if (keyboard_check_pressed(vk_space)) transition = !transition;

if (transition) {
	new_y = 480;
} else {
	new_y = 0;
}

y = lerp(y,new_y,.2);
