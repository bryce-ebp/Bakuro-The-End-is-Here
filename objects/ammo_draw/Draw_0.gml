if( !instance_exists( local_player ) ) return;

pos_x = local_player.x;
pos_y = local_player.y - local_player.sprite_height;

draw_sprite( ammo, -1, pos_x, pos_y );
switch( local_player.m_ammo ) {
	case 10: image_index = 0; break;
	case  9: image_index = 1; break;
	case  8: image_index = 2; break;
	case  7: image_index = 3; break;
	case  6: image_index = 4; break;
	case  5: image_index = 5; break;
	case  4: image_index = 6; break;
	case  3: image_index = 7; break;
	case  2: image_index = 8; break;
	case  1: image_index = 9; break;
	case  0:
	default:
		if( local_player.m_reloading ) {
			image_index = 11;
			break;
		}
	
		if( m_ammo_flash_time < m_ammo_flash_timer ) {
			m_flip = !m_flip;
			m_ammo_flash_time = m_ammo_flash_timer + 60;
		}
		if( m_flip ) image_index = 10 
		else image_index = 12;
		
		break;
}

++m_ammo_flash_timer;
