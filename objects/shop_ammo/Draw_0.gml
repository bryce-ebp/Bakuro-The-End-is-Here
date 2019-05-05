if( shop.m_open && !m_purchased ) {
	draw_sprite( ammo, -1, x, y );
}

if( !shop.m_open ) {
	m_purchased = false;
}
