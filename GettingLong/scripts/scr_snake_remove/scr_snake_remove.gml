///@desc
///@param

var snakelist_size = ds_list_size(snake_item)

if (snakelist_size != 0) {
	instance_destroy(snake_item[|snakelist_size-1]);
	ds_list_delete(snake_item,snakelist_size-1)
}
