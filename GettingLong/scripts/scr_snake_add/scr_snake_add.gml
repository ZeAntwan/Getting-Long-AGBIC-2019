///@desc
///@param

var snakelist_size = ds_list_size(snake_item)

if (snakelist_size != 0) {
	var refc = move_mem[| snakelist_size]
	var refcx = refc[0]
	var refcy = refc[1]
	var item = instance_create_layer(refcx,refcy,"Parts",o_dog_part);
} else {
	var item = instance_create_layer(x-tile_width,y,"Parts",o_dog_part);
}
	
ds_list_add(snake_item,item);
item.position = snakelist_size;
