/// @description 
if(instance_number(object_index) > 1) {
    instance_destroy();
    exit;
} else {
	if (o_camera.new_y != 0) {
		offset = o_camera.y;
	} else {
		offset = 0;	
	}
}
