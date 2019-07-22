/// @description Insérez la description ici
currentmove = global.movecount;

memory = ds_stack_create();

col_layer = layer_get_id("Obstacles");
col_tilemap = layer_tilemap_get_id(col_layer);
