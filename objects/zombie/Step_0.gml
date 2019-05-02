speed = 0.5;

if( mp_grid_path( global.grid, path, x, y, local_player.x, local_player.y, 1 ) ) {
	path_start( path, .5, path_action_stop, false );
}

if( speed == 0 )
	image_speed = 0;
 else 
	image_speed = 1;
