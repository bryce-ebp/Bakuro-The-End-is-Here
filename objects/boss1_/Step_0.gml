m_speed = 0.9;

if( place_meeting( x, y, local_player ) ) {
	if( m_attack_time < m_attack_timer ) {
		local_player.m_health -= m_damage;
		m_attack_time = m_attack_timer + 30;
	}
	
	m_speed = 0;
}
++m_attack_timer;


if( mp_grid_path( global.grid, path, x, y, local_player.x, local_player.y, 1 ) ) {
	path_start( path, m_speed, path_action_stop, false );
}

if( m_speed == 0 )
	image_speed = 0;
 else 
	image_speed = 1;


if( m_health <= 0 ) {
	instance_destroy( );
	instance_create_layer( x, y, "Instances", coin_dropped ); 
	instance_create_layer( x + 10, y + 15, "Instances", coin_dropped );
	++local_player.m_kills;
}
