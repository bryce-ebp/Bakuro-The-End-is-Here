switch( next_button.m_index ) {
	case TutorialItems.COIN:
		draw_sprite( coin_tut, -1, x, y );
		draw_sprite( coin_tut_text, -1, x, y + sprite_get_height( coin_tut ) );
		break;
		
	case TutorialItems.AMMO:
		draw_sprite( ammo_tut, -1, x, y );
		draw_sprite( ammo_tut_text, -1, x, y + sprite_get_height( ammo_tut ) );
		break;
	
	case TutorialItems.PLAYER:
		draw_sprite( player_tut, -1, x, y );
		draw_sprite( player_tut_text, -1, x, y + sprite_get_height( player_tut ) );
		break;
		
	case TutorialItems.SHOP:
		draw_sprite( shop_tut, -1, x, y );
		draw_sprite( player_tut_text, -1, x, y + sprite_get_height( shop_tut ) );
		break;
		
	default:
		room_goto( menu );
}

