cell_width = 16
cell_height = 16;

num_wid = room_width div cell_width;
num_hei = room_height div cell_height;

global.grid = mp_grid_create( 0, 0, num_wid, num_hei, cell_width, cell_height );

mp_grid_add_instances( global.grid, wall_parent, false );