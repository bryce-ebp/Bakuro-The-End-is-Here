if( !instance_exists( zombie ) && enemy_spawner.m_enemies_spawned != 0 ) {
	++enemy_spawner.m_waves_passed;
	shop.m_wave_over = true;
}
