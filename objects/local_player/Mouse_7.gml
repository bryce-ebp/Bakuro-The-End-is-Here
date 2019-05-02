if( m_ammo < m_max_ammo && m_ammo > 0 ) {
	instance_create_depth( mouse_x, mouse_y, -1, bullet );
	--m_ammo;
}