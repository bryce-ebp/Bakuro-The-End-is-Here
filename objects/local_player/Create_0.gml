// init variables
m_damage = 0;

m_clips = 0;
m_max_clips = 3;

m_ammo = 0;
m_max_ammo = 10;

m_walk_speed = 1;


m_max_health = 100;
m_health = 100;

enum PlayerFlags {
	NONE,
	MOVING,
	STANDING,
	MAX
}

m_flags = 0;