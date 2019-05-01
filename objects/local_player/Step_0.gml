if( room == menu ) return;

key_up    = keyboard_check( 0x26 ) || keyboard_check( 0x57 );
key_down  = keyboard_check( 0x28 ) || keyboard_check( 0x53 );
key_left  = keyboard_check( 0x25 ) || keyboard_check( 0x41 );
key_right = keyboard_check( 0x27 ) || keyboard_check( 0x44 );

move_horizontal = key_right - key_left;
horizontal_speed = move_horizontal * m_walk_speed;

move_vertical = key_down - key_up;
vertical_speed = move_vertical * m_walk_speed;

if( place_meeting( x + horizontal_speed, y, wall_parent ) ) {
	while( !place_meeting( x + sign( horizontal_speed ), y, wall_parent ) )
		x += sign( horizontal_speed );
		
	horizontal_speed = 0;
}

x += horizontal_speed;


if( place_meeting( x, y + vertical_speed, wall_parent ) ) {
	while( !place_meeting( x, y + sign( vertical_speed ), wall_parent ) ) 
		y += sign( vertical_speed );
	
	vertical_speed = 0;
}

y += vertical_speed;

if( place_meeting( x, y, next_room) ) 
	room_goto_next( );

if( x < mouse_x ) {
	image_xscale = 1;
} else if( x > mouse_x ) {
	image_xscale = -1;
}

if( y < mouse_y ) {
	sprite_index = local_sprite;
} else if( y > mouse_y ) {
	sprite_index = local_back;
}

if( ( vertical_speed == 0 ) && ( horizontal_speed == 0 ) ) {
	m_flags = PlayerFlags.STANDING;
} else {
	m_flags = PlayerFlags.MOVING;
}

switch( m_flags ) {
	case PlayerFlags.NONE: image_speed = 0; break;
	case PlayerFlags.MOVING: image_speed = 1; break;
	case PlayerFlags.STANDING: image_speed = 0; break;
	case PlayerFlags.MAX:
	default:
		break;
}

