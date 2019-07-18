/// @description Player Init
enum states {
	idle,
	walking,
	reverse
}

start_pos = [x,y];

dog_state = states.idle;

debug_item = false;

last_move = [0,0];

move_count = 0;

move_mem = ds_list_create();


snake_item = ds_list_create();
var item = instance_create_layer(x-tile_width,y,"Parts",o_dog_part);
ds_list_add(snake_item,item);
ds_list_insert(move_mem,0,[item.x,item.y]);



col_layer = layer_get_id("Obstacles");
col_tilemap = layer_tilemap_get_id(col_layer);


