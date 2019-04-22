if( room == menu || room == controls ) return;

m_is_paused = !m_is_paused;

if( m_is_paused ) {
	room_persistent = true;
	m_previous_room = room;
	room_goto( paused );
}

if( !m_is_paused ) {
	room_goto( m_previous_room );
	
	if( m_previous_room != -1 ) {
		m_previous_room = -1;
	}
	
}
