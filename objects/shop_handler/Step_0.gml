if( !instance_exists( enemy1 ) && ( enemy_spawner.m_enemies_spawned != 0 ) && m_timer_delay > m_round_timer ) {
	++enemy_spawner.m_waves_passed;
	shop.m_wave_over = true;
	m_round_timer = m_timer_delay + 200;
}

++m_timer_delay;