speed = 0.5;

// https://www.youtube.com/watch?v=wmnaOLI6RzE
h_speed = dir * speed;

if( place_meeting( x + h_speed, y, wall_parent ) ) {
	while( !place_meeting( x + sign( h_speed ), y, wall_parent ) )
		x += sign( speed );
		
	speed = 0;
}


if( place_meeting( x, y + vspeed, wall_parent ) ) {
	while( !place_meeting( x, y + sign( vspeed ), wall_parent ) ) 
		y += sign( speed );
	
	speed = 0;
}

move_towards_point( local_player.x, local_player.y, speed );
