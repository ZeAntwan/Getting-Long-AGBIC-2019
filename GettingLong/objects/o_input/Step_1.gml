/// @description Insérez la description ici
if (keyboard_check_pressed(vk_right) xor keyboard_check_pressed(vk_left) xor keyboard_check_pressed(vk_up) xor keyboard_check_pressed(vk_down)) {
		dx = keyboard_check_pressed(vk_right)-keyboard_check_pressed(vk_left)
		dy = keyboard_check_pressed(vk_down)-keyboard_check_pressed(vk_up)
} else {
		dx = 0;
		dy = 0;
}
