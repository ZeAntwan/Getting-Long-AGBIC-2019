///@desc
///@params direction

ds_list_insert(move_mem,0,[x,y]);

var dx = argument0;
var dy = argument1

x+= dx * tile_width;
y+= dy * tile_height;

last_dir = [dx,dy];
