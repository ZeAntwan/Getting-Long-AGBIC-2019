/// @description Insérez la description ici

ds_list_clear(menu_item);

if (instance_exists(o_menu_item)) {
	for (var p = 0; p < 10; p++) {
		for (var i = 0; i < instance_number(o_menu_item); i++) {
			var item = instance_find(o_menu_item,i);
			if (item.position == p) {
				ds_list_add(menu_item,item);
				break;
			}
		}
	}
}

currentsel = 0;
menu_item[| currentsel].selected = true;
