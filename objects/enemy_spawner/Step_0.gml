if( !instance_exists( enemy_parent ) && shop.m_open ) {
	m_enemies_to_spawn = ( m_waves_passed + 1 ) * 2;
	
	switch( room ) {
		case level1:
			// 2 normal waves
			m_max_waves = 3;
			m_boss = false;
			break;
			
		case level2:
			// 3 normal waves 1 boss
			m_max_waves = 4;
			m_boss = true;
			break;
		
		case level3:
			// 4 normal waves 1 boss
			m_max_waves = 5;
			m_boss = true;
			break;
		
		default:
			m_max_waves = 0;
			break;
	}
	
	local_player.m_kills = 0;
	m_enemies_spawned = 0;
	m_time = 0;
	m_timer = 0;
} 

if( !shop.m_open ) {
	if( ( m_time < m_timer ) && ( m_enemies_spawned < m_enemies_to_spawn ) && ( m_waves_passed < m_max_waves - 1 ) ) {
		enemy = choose( enemy1, enemy2, enemy2 );
		instance_create_layer( x, y, "Instances", enemy );
		++m_enemies_spawned;
		m_time = m_timer + 60;
	}

	++m_timer;
}
	