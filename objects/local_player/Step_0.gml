if( room == menu ) return;

key_up    = keyboard_check( 0x26 ) || keyboard_check( 0x57 );
key_down  = keyboard_check( 0x28 ) || keyboard_check( 0x53 );
key_left  = keyboard_check( 0x25 ) || keyboard_check( 0x41 );
key_right = keyboard_check( 0x27 ) || keyboard_check( 0x44 );

if( key_up ) {
	y -= 2;
}

if( key_down ) {
	y += 2;
}

if( key_left ) {
	x -= 2;
}

if( key_right ) {
	x += 2;
}

if( x < mouse_x ) {
	image_xscale = 1;
} else if( x > mouse_x ) {
	image_xscale = -1;
}

