///@desc
///@param


if (snake_len != 0) {
	var refitem = snake_item[| snake_len-1]
	var refc = snake_dir[| snake_len-1]
	var refcx = refc[0]
	var refcy = refc[1]
	var px = refitem.x - refcx * tile_width 
	var py = refitem.y - refcy * tile_height
	var item = instance_create_layer(px,py,"Parts",o_dog_part);
} else {
	var item = instance_create_layer(x,y,"Parts",o_dog_part);
}
		
ds_list_add(snake_item,item);
snake_len++
