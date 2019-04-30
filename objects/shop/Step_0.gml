if( m_wave_start ) {
	m_wave_over = false;
	m_open = false;
	image_speed = 2;
	sprite_index = shop_closed_img;
}

if( m_wave_over ) {
	m_wave_start = false;
	image_speed = 2;
	sprite_index = shop_opened_img;
}

if( m_wave_over && ( ( sprite_index == shop_opened_img ) && ( image_index >= 9 ) ) && !m_wave_start ) {
	m_open = true;
	sprite_index = shop_flashing;
}

if( ( sprite_index == shop_closed_img ) && ( image_index >= 12 ) ) {
	image_speed = 0;
}

if( keyboard_check( vk_f1 ) ) {
	m_wave_start = !m_wave_start;
}

if( keyboard_check( vk_f2 ) ) {
	m_wave_over = !m_wave_over;
}

if( m_open ) {
	// TODO: shopping code
}

