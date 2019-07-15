/// @description Player Init
enum states {
	idle,
	walking
}


debug_item = false;


snake_item = ds_list_create();
snake_dir = ds_list_create();
snake_len = 0;
