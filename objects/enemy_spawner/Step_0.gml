if( !instance_exists( zombie ) && shop.m_open ) {
	m_enemies_to_spawn = random_range( ( m_waves_passed + 1 ) * 2,
	( m_waves_passed + 1 ) * 4 );
	
	local_player.m_kills = 0;
	m_enemies_spawned = 0;
	m_time = 0;
	m_timer = 0;
} 

if( !shop.m_open ) {
	if( ( m_time < m_timer ) && ( m_enemies_spawned < m_enemies_to_spawn ) ) {
		instance_create_layer( x, y, "Instances", zombie );
		++m_enemies_spawned;
		m_time += 60;
	}

	++m_timer;
	if( local_player.m_kills == m_enemies_to_spawn ) 
		++m_waves_passed;
}
	