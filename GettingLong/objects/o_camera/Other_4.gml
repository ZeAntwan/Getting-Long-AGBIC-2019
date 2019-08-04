/// @description Insérez la description ici
if(instance_number(object_index) > 1) {
    instance_destroy();
    exit;
}


//Enable the use of views
view_enabled = true;

//Make view 0 visible
view_set_visible(0, true);
view_set_camera(0, camera);

//Set the port bounds of view 0
view_set_wport(0, 480);
view_set_hport(0, 480);

if (!cameracheck) {
//Resize and center
window_set_rectangle((display_get_width() - view_wport[0]) * 0.5, (display_get_height() - view_hport[0]) * 0.5, view_wport[0], view_hport[0]);
surface_resize(application_surface,view_wport[0],view_hport[0]);
cameracheck = true;
}