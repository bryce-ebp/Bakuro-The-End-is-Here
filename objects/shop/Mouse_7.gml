
m_pressed_shop = !m_pressed_shop;

if( m_pressed_shop ) {
	room_persistent = true;
	m_previous_room_shop = room;
	room_goto( shopping_room );
}

if( !m_pressed_shop ) {
	room_goto( m_previous_room_shop );
	
	if( m_previous_room_shop != -1 ) {
		m_previous_room_shop = -1;
	}
	
}
