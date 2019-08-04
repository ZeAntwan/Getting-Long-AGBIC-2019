///@desc
///@params room

o_camera.transition = true

if (o_camera.y > 239 and o_camera.transition == true) {
	room_goto(argument0)
	exit;
};