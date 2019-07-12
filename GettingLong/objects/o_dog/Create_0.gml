/// @description Player Init
enum states {
	idle,
	walking
}

state = states.idle;

x_pos = x div tile_width;
y_pos = x div tile_height;

x_from = x_pos;
y_from = y_pos;

walk_anim_length = .5;
walk_anim_time = 0;
