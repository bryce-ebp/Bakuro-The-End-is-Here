pos_x = camera_get_view_x( view_camera[ 0 ] );
pos_y = camera_get_view_y( view_camera[ 0 ] );

draw_sprite( ammo, -1, pos_x + 10, pos_y + 40 );

image_speed = 0;

draw_set_font( font_arial );
draw_set_color( c_white );
draw_text( pos_x + 15, pos_y + 50, local_player.m_clips );
