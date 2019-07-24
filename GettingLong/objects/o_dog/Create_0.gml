/// @description Player Init
enum states {
	idle,
	walking,
	reverse,
	freeze
}

start_pos = [x,y];
next_x = x;
next_y = y;

dog_state = states.idle;

debug_item = false;

move_mem = ds_list_create();

snake_item = ds_list_create();

col_layer = layer_get_id("Obstacles");
col_tilemap = layer_tilemap_get_id(col_layer);

global.dogblocked = false;

ouch_sound = [snd_ouch_001,snd_ouch_002,snd_ouch_003]

