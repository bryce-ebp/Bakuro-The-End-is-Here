if( ( shop.m_allow_purchase ) && ( local_player.m_health < 100 ) && g_coins >= 5 ) {
	local_player.m_health = 100;
	g_coins -= 5;
}

if( local_player.m_health == 100 ) {
	m_purchased = true;
}
