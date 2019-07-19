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
ds_list_insert(move_mem,0,[x-tile_width,y]);
scr_snake_add();



col_layer = layer_get_id("Obstacles");
col_tilemap = layer_tilemap_get_id(col_layer);


