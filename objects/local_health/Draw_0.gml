pos_x = local_player.x - abs( local_player.sprite_width );
pos_y = local_player.y + local_player.sprite_height / 1.75;

draw_sprite( health_outline, -1, pos_x, pos_y );

if( !instance_exists( local_player ) ) return;

m_draw_health = lerp( m_draw_health, local_player.m_health, .5 );

color = merge_colour( c_red, c_green, m_draw_health / local_player.m_max_health );

draw_set_color( color );
draw_set_circle_precision( 128 );
draw_roundrect( pos_x, pos_y,
	pos_x + 31 * m_draw_health / local_player.m_max_health,
	pos_y + 7, false );
	
draw_set_color( c_white );
