if( place_meeting( x, y, enemy_parent ) ) {
	attacked = instance_nearest( x, y, enemy_parent );
	attacked.m_health -= local_player.m_damage;
	
	instance_destroy( );
}

if( place_meeting( x, y, wall_parent ) ) {
	instance_destroy( );
}