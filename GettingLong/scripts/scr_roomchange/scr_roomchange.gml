///@desc
///@params room

o_camera.transition = true

if (o_camera.y > 479 and o_camera.transition == true) {
	room_goto(argument0)
	exit;
};