/// @description SINGLETON
if(instance_number(object_index) > 1) {
    instance_destroy();
    exit;
}

if (!instance_exists(o_input)) instance_create_layer(0,0,"Tools",o_input);

o_camera.transition = false;

global.currentlevel = room;

global.crumbcount = 0;
global.movecount = 0;
