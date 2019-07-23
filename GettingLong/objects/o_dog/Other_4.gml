/// @description Check for existing Dog Parts
dog_state = states.idle;

if (instance_exists(o_dog_part)) 
{
	for (var p = 0; p < 10; p++) {
		for (var i = 0; i < instance_number(o_dog_part); i++) {
			var item = instance_find(o_dog_part,i);
			if (item.position == p) {
				ds_list_add(move_mem,[item.x,item.y])
				ds_list_add(snake_item,item);
				break;
			}
		}
	}
}