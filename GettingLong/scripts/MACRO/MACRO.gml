gml_pragma("global","MACRO()");

#macro tile_width 32;
#macro tile_height 32;

enum directions {
	right,
	up,
	left,
	down
}

global.components = [];

global.components[directions.right] = [1, 0]
global.components[directions.up] = [0, -1]
global.components[directions.left] = [-1, 0]
global.components[directions.down] = [0, 1]