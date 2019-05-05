if( ( shop.m_allow_purchase ) && ( local_player.m_max_clips > local_player.m_clips ) && g_coins > 3 ) {
	++local_player.m_clips;
	g_coins = g_coins - 3;
}

if( local_player.m_max_clips == local_player.m_clips ) {
	m_purchased = true;
}
