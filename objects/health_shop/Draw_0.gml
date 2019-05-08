if( shop.m_open && !m_purchased ) {
	draw_sprite( health_increase, -1, x, y );
	if( position_meeting( mouse_x, mouse_y, health_shop ) ) {
		draw_set_font( font_arial );
		draw_set_color( c_white );
		draw_text( x - sprite_width / 4, y - sprite_height - 4, "5" );
	}
}

if( !shop.m_open ) {
	m_purchased = false;
}
