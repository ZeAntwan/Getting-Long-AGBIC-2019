/// @description Insérez la description ici
x=0;
y=0;

new_y = y;

//Camera creation

//Build a camera at (0,0), with size 640x480, 0 degrees of angle, no target instance, instant-jupming hspeed and vspeed, with a 32 pixel border
camera = camera_create_view(x, y, 240, 240, 0, -1, -1, -1, 32, 32);

//Set view0 to use the camera "camera"
view_set_camera(0, camera);

transition = false;

lerp_value = .15;

cameracheck = false;