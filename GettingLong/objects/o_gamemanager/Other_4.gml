/// @description SINGLETON
if(instance_number(object_index) > 1) {
    instance_destroy();
    exit;
}

o_camera.transition = false;

global.currentlevel = room;

global.crumbcount = 0;
global.movecount = 0;