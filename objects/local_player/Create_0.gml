// init variables
m_damage = 40;

m_clips = 1;
m_max_clips = 3;

m_ammo = 10;
m_max_ammo = 10;

m_walk_speed = 1;

m_kills = 0;

m_max_health = 100;
m_health = 100;

enum PlayerFlags {
	NONE,
	MOVING,
	STANDING,
	MAX
}

m_flags = 0;

m_shoot_timer = 0;
m_shoot_time = 0;

m_reloading = false;
m_reload_timer = 0;
m_reload_time = 0;
