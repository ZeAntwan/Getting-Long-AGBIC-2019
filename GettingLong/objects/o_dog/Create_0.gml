/// @description Player Init
enum states {
	idle,
	walking
}


debug_item = false;

snake_item = ds_list_create();
snake_dir = ds_list_create();
snake_len = 0;

col_layer = layer_get_id("Obstacles");
col_tilemap = layer_tilemap_get_id(col_layer);
