if( !instance_exists( enemy_parent ) && shop.m_open ) {
	enemy_spawner.m_boss_spawned = false;
}

if( !shop.m_open ) {
	if( ( enemy_spawner.m_waves_passed == enemy_spawner.m_max_waves - 1 ) && !enemy_spawner.m_boss_spawned
		&& !enemy_spawner.m_boss_spawned ) {
		switch( room ) {
			case level2:
			instance_create_layer( x, y, "Instances", boss1_ );
			enemy_spawner.m_boss_spawned = true;
			++enemy_spawner.m_enemies_spawned;
				break;
				
			case level3:
			instance_create_layer( x, y, "Instances", boss1_ );
			enemy_spawner.m_boss_spawned = true;
			++enemy_spawner.m_enemies_spawned;
				break;
		}
		
	}
}
