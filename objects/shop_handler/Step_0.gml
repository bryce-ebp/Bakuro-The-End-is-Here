if( !instance_exists( enemy_parent ) && ( enemy_spawner.m_enemies_spawned != 0 ) 
	&& ( m_timer_delay > m_round_timer ) ) {
	
	if( enemy_spawner.m_waves_passed == enemy_spawner.m_max_waves - 1 && !enemy_spawner.m_boss )
		room_goto_next( );
	else if( enemy_spawner.m_waves_passed == enemy_spawner.m_max_waves && enemy_spawner.m_boss )
		room_goto_next( );
		
	++enemy_spawner.m_waves_passed;
	shop.m_wave_over = true;
	m_round_timer = m_timer_delay + 200;
}

++m_timer_delay;