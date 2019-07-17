/// @description Player Init
enum states {
	idle,
	walking
}


debug_item = false;

last_dir = [1,0];

move_mem = ds_list_create();
ds_list_insert(move_mem,0,[x,y]);








snake_dir = ds_list_create();

snake_len = 0;

snake_item = ds_list_create();
var item = instance_create_layer(x-tile_width,y,"Parts",o_dog_part);
ds_list_add(snake_item,item);
snake_len++


col_layer = layer_get_id("Obstacles");
col_tilemap = layer_tilemap_get_id(col_layer);


