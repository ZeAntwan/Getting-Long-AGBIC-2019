/// @description Insérez la description ici

for (var i = 0; i < ds_list_size(snake_item); i++) {
	var c = snake_item[| i] ;
	var ix = c[0];
	var iy = c[1];
	
	draw_sprite(sprite_index,image_index,ix,iy);
}
draw_self();