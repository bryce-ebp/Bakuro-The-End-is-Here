if( room == menu ) return;

key_up    = keyboard_check( 0x26 ) || keyboard_check( 0x57 );
key_down  = keyboard_check( 0x28 ) || keyboard_check( 0x53 );
key_left  = keyboard_check( 0x25 ) || keyboard_check( 0x41 );
key_right = keyboard_check( 0x27 ) || keyboard_check( 0x44 );

move_horizontal = key_right - key_left;
horizontal_speed = move_horizontal * m_walk_speed;

move_vertical = key_down - key_up;
vertical_speed = move_vertical * m_walk_speed;

if( place_meeting( x + horizontal_speed, y, wall_parent )
	|| place_meeting( x + horizontal_speed, y, enemy_parent ) ) {
	while( !place_meeting( x + sign( horizontal_speed ), y, wall_parent )
		&& !place_meeting( x + sign( horizontal_speed ), y, enemy_parent ) )
		x += sign( horizontal_speed );
		
	horizontal_speed = 0;
}

x += horizontal_speed;


if( place_meeting( x, y + vertical_speed, wall_parent )
	|| place_meeting( x, y + vertical_speed, enemy_parent ) ) {
	while( !place_meeting( x, y + sign( vertical_speed ), wall_parent )
		&& !place_meeting( x, y + sign( vertical_speed ), enemy_parent ) ) 
		y += sign( vertical_speed );
	
	vertical_speed = 0;
}

y += vertical_speed;

if( instance_exists( enemy_parent ) ) {
	if( mouse_check_button( mb_left ) && ( m_ammo <= m_max_ammo ) && ( m_ammo > 0 )
			&& ( m_shoot_time < m_shoot_timer ) ) {
		with( instance_create_layer( x, y, "Instances", bullet ) ) {
			image_angle = point_direction( x, y, mouse_x, mouse_y );
			direction = image_angle;
			speed = 2;
		}
	
		m_shoot_time = m_shoot_timer + 60;
		--m_ammo;
	}
	
	++m_shoot_timer;
}

if( m_clips > 0 && m_ammo <= 0 && keyboard_check( 0x52 ) ) {
	m_reloading = true;
	m_reload_time = m_reload_timer + 30;
}
++m_reload_timer;

if( m_reload_time < m_reload_timer && m_reloading ) {
	m_reloading = false;
	m_ammo = m_max_ammo;
}


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

if( m_health <= 0 ) {
	room_goto( menu );
}

if( place_meeting( x, y, coin_dropped ) ) {
	nearest = instance_nearest( x, y, coin_dropped );
	++g_coins;
	instance_destroy( nearest );
}
