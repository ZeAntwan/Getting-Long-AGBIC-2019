/// @description Player Init
enum states {
	idle,
	walking
}

state = states.idle;

x_pos = x div tile_width;
y_pos = y div tile_height;

x_from = x_pos;
y_from = y_pos;


snake_item = ds_list_create();
