///@desc
///@params x,y

ds_list_insert(move_mem,0,[x,y]);

var newx = argument0;
var newy = argument1;

direction = point_direction(x,y,newx,newy);

x = newx;
y = newy;
