

var grid = argument0;
var px = argument1
var py = argument2
var l = argument3

var w = ds_grid_width(grid)
var h = ds_grid_height(grid)
ds_grid_set_region(grid,0,0,w,h,0);

for (var i = l; i > 0; i--) {
	grid[# px, py] = y;
	px--
	
	if (px < 0) {
		show_error("snake oob", true)	
	}
}